<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        
        // Controller intializations
        $this->validate_token();
        $this->lang->load('dashboard');
        $this->load->model('SC_Dashboard', 'scdashboard');
        $this->load->model('SC_Grading', 'grading');
       
    }
//-------------------Count-----------------------------------

    public function getCategory_get() {
    	$category = $this->grading->getCategory();
    	array_unshift($category, array("id"=>0,"name"=>"All"));
    	
    	$response ['category'] = $category;
    	$this->set_response($response, REST_Controller::HTTP_OK);
    }
    
    public function getDashboard_get() {    
    	$Totaluser = $this->scdashboard->gettotalusercount();
    	$Totalquestion = $this->scdashboard->getquestioncount();
    	$response ['totalUser'] = $Totaluser ->count;
    	$response ['totalQuestion'] = $Totalquestion ->count;
    	//$subcategoryDetails = $this->grading->getSubCategory($categoryId);
    	$this->set_response($response, REST_Controller::HTTP_OK);
    }
    public function getUserpiechart_get() {   	
    	$Totalchartuser = $this->scdashboard->getchartusercount();
    	$response ['userChart'] = $Totalchartuser;
    	//$subcategoryDetails = $this->grading->getSubCategory($categoryId);
    	$this->set_response($response, REST_Controller::HTTP_OK);
    }
    public function getQuestionbarchart_post() {
    	$category_id = $this->post("category");
    	
    	$Totalchartuser = $this->scdashboard->getbarchartcount($category_id);
        $label = array();
        $value = array();
    	for($i=0;$i<count($Totalchartuser);$i++)
    	{
    		$label[$i] = $Totalchartuser[$i]->label;
    		$value[$i] = $Totalchartuser[$i]->value;
    	}
    	$data = array(
    			'label' => $label,
    			'value' => $value
    	);
    	 $response ['questionChart'] = $data;
    	//$subcategoryDetails = $this->grading->getSubCategory($categoryId);
    	$this->set_response($response, REST_Controller::HTTP_OK); 
    }
    
           
}
?>