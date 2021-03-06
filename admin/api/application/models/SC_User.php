<?php
class SC_User extends MY_Model {
	public function __construct() {
		parent::__construct ();
		
		// Model intilizations
		$this->_table = 'admin_master';
		// $this->validate = $this->config->item('sdf');
	}
	public function authorize($userData) {
		$result = $this->db->select ( 'id, user_id, f_name, l_name, CONCAT(f_name, " " ,l_name) AS name, email_1 AS email, isFirstLogin AS returningUser, imagepath As image' )->from ( $this->_table )->where ( '(user_id="' . $userData ['username'] . '" OR email_1="' . $userData ['username'] . '")' )->where ( 'auth_string', $this->_generatePassword ( $userData ['password'] ) )->get ()->row ();
		
		if (count ( $result ) > 0) {
			$user = array (
					'isFirstLogin' => 0 
			);
			
			$this->update ( $result->id, $user );
		}
		
		return $result;
	}
	public function UserActivation($userData) {
		// print_r($userData);return;
		$result = $this->db->select ( 'id,user_id, status' )->from ( $this->_table )->where ( 'user_id="' . $userData ['userID'] . '"' )->get ()->row ();
		// $result = $this->db->last_query();
		// print_r($result -> status);return;
		if (count ( $result ) > 0) {
			
			if ($result->status == "In Active") {
				
				$user = array (
						'status' => 'Active' 
				);
				
				if ($this->update ( $result->id, $user )) {
					
					return "status updated";
				}
			} 

			else {
				return "status not updated";
			}
		} else {
			return "user not found";
		}
	}
	public function doesUserExist($userData) {
		return $this->db->select ( 'id, email_1 as emailAddress' )->from ( $this->_table )->where ( '(user_id="' . $userData ['userName'] . '" OR email_1="' . $userData ['email'] . '")' )->get ()->row ();
	}
	public function updatePassword($userData) {
		$user = array (
				'isForgotPassword' => 1 
		);
		
		if ($this->update ( $userData->id, $user )) {
			return $user;
		} else {
			return FALSE;
		}
	}
	public function resetPassword($userdata) {
		$result = $this->db->select ( 'id,auth_string' )->from ( $this->_table )->where ( 'user_id="' . $userdata ['userId'] . '"' )->get ()->row ();
		
		$user = array (
				'auth_string' => $this->_generatePassword ( $userdata ['newpassword'] ),
				'isForgotPassword' => 0 
		);
		
		if ($this->update ( $result->id, $user )) {
			return $user;
		} else {
			return FALSE;
		}
	}
	public function changePassword($userdata) {
		// print_r($userdata) ;
		$oldpassword = $this->_generatePassword ( $userdata ['oldpassword'] );
		$result = $this->db->select ( 'id,auth_string' )->from ( $this->_table )->where ( 'user_id="' . $userdata ['userId'] . '"' )->get ()->row ();
		
		if ($oldpassword == $result->auth_string) {
			
			$newpassword = $this->_generatePassword ( $userdata ['newpassword'] );
			if ($oldpassword != $newpassword) {
				$user = array (
						'auth_string' => $newpassword,
						'isForgotPassword' => 0 
				);
				// print_r($user) ;return;
				if ($this->update ( $result->id, $user )) {
					return "Passwordchanged";
				} else {
					return FALSE;
				}
			} else {
				return "SamePassword";
			}
		} else {
			return "Worngcredentials";
		}
	}
	public function forgotpasswordlinkcheck($userData) {
		
		// print_r($userData);return;
		$result = $this->db->select ( 'id,isForgotPassword' )->from ( $this->_table )->where ( 'user_id="' . $userData ['username'] . '"' )->get ()->row ();
		// $result = $this->db->last_query();
		// print_r($result -> status);return;
		if ($result->isForgotPassword == 1) {
			
			return "Not Expried";
		} 

		else {
			return "Expried";
		}
	}
	public function register($userData) {
		// print_r($userData); return;
		$user = array (
				'user_id' => $userData ['userName'],
				'f_name' => $userData ['firstName'],
				'm_name' => $userData ['middleName'],
				'l_name' => $userData ['lastName'],
				'email_1' => $userData ['emailAddress'],
				'auth_string' => $this->_generatePassword ( $userData ['password'] ),
				'telephone' => $userData ['telephone'],
				'screen_name' => $userData ['userName'],
				'tutor_type' => $userData ['tutorType'],
				'imagepath' => "uploadImage/default.png",
				'status' => "In Active" 
		);
		
		return $this->insert ( $user );
	}
	private function _generatePassword($password) {
		// return md5($password . base64_decode($this->config->item('password_hash')));
		return md5 ( $password );
	}
}
?>