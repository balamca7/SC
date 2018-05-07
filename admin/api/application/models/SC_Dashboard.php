<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class SC_Dashboard extends MY_Model {
	public function __construct() {
		parent::__construct ();
		
		// Model intilizations
		//$this->_table = 'postquestion';
		// $this->validate = $this->config->item('sdf');
		$this->load->library ( 'subquery' );
	}
	
	
	public function gettotalusercount() {
		$this->_table = "user_master";
		return $this->db->select ( 'count(*) as count' )
		                ->from ( $this->_table ) 
		                ->get ()->row ();
	}
	public function getquestioncount() {
		$this->_table = "postquestion";
		return $this->db->select ( 'count(*) as count' )
		->from ( $this->_table )
		->get ()->row ();
	}
	public function getchartusercount() {
		$this->_table = "user_master";
		$result = $this->db->query('select count(A.tutor_type) as value, A.tutor_type as label, (CASE WHEN A.tutor_type = "Student" THEN "red" WHEN A.tutor_type = "Others" THEN "gray" WHEN A.tutor_type = "Teacher" THEN "green" WHEN A.tutor_type = "Volunteer" THEN "aqua" END) as color from ( SELECT if((tutor_type = "Not interested" or tutor_type is NULL), "Others", tutor_type ) as tutor_type FROM `user_master`) AS A GROUP BY A.tutor_type')->result ();
	return $result;
	}
	public function getbarchartcount($category_id) {
		$this->_table = "user_master";
		if($category_id == 0)
		{
			$result = $this->db->query('Select a.name as label, ifnull( b.cnt,0) as value  from category as a Left join (SELECT count(post_Id) as cnt,subject_id FROM `postquestion` group by subject_id) as b on  b.subject_id = a.id order by a.id')->result ();
			return $result;
		}
		else if($category_id != 0) 
		{
			$result = $this->db->query('Select a.name as label, ifnull( b.cnt,0) as value  from subcategory as a Left join (SELECT count(post_Id) as cnt, sub_subject_id FROM `postquestion` group by sub_subject_id) as b on  b.sub_subject_id = a.id  where a.category_id = '.$category_id.' order by a.id')->result ();
			return $result;
		}
		
		
	}
}
?>