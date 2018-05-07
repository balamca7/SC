app.controller('profileCtrl', function ($scope, $rootScope, $routeParams, $location, $http, Data) {
    //initially set those objects to null to avoid undefined error
    //alert("profileCtrl");
     var userID = $routeParams.id;
    
     var usergroup = $routeParams.usergroup;
    $scope.Emp = {hideSave:false, selected :{}};
    $scope.modelInculdeFile = "";

   $scope.init = function() {
               $scope.getCountryList();
               $scope.getProfile(userID);
               $scope.getUserEducationDetails();

   };

    $scope.UplodPhoto = function(){
    	$scope.modelInculdeFile = "templates/home/uploadPhoto.html";
		$('#myModal').modal('show');
    };

    $scope.ChangePassword = function(){
    	$scope.chgpwd = {};
    	$scope.modelInculdeFile = "templates/home/changepassword.html";
		$('#myModal').modal('show');

    }

    $scope.saveChangePwd = function (chgpwd){
   	 Data.post('Profile/changePassword', chgpwd
        ).then(function (results) {

        	//alert(JSON.stringify(results));
       	 Data.toast(results);
       	if (results.status == "success") {
       	 $scope.chgpwd = {};
       	$('#myModal').modal('hide');
       	}
        });
    }

    $scope.getProfileTemplate = function (contact) {
        if (contact.id === $scope.Emp.selectedUser.id) return 'editProfile';
        else return 'displayProfile';
    };
    $scope.getSchoolTemplate = function (contact1) {
    	if (contact1.id === $scope.Emp.selectedSchool) return 'editSchool';
        else return 'displaySchool';
    };

    $scope.getEducation = function (category) {
    	if (category.id === $scope.selectedCategory) return 'editEducation';
        else   	return 'displayEducation';
    };


   $scope.editProfile = function (contact) {
        $scope.Emp.selectedUser = angular.copy(contact);
    };

    $scope.editSchool = function (contact) {
        $scope.Emp.selectedSchool = angular.copy(contact);
    };
    $scope.editEducation = function (contact) {
        $scope.selectedCategory = angular.copy(contact);
    };

    $scope.profileReset = function () {
    	$scope.Emp.selectedUser = {};
    	$scope.Emp.selectedSchool = {};
    	$scope.selectedCategory = {};
    };

    $scope.saveUserInfo = function(userInfo)
    {
    	 Data.put('Profile/saveUserInfo',
    		  userInfo
         ).then(function (results) {
        	 Data.toast(results);
        	 if(results.status == "success")
         	{   $scope.profileReset();
         	    $scope.Emp.userInfo = results.profile;
         	}
         });
    }
    $scope.saveSchoolInfo = function(id, school_id)
    {
    	 Data.put('Profile/saveSchoolInfo', {
    		 id: id,
    		 school_id : school_id
         }).then(function (results) {
        	Data.toast(results);
        	$scope.Emp.schoolInfo = results.schoolInfo;
        	$scope.profileReset();
         });
    }
    $scope.saveEduInfo = function(eduInfo)
    {
    	 Data.post('Profile/saveEduInfo', {
    		 eduInfo: eduInfo
         }).then(function (results) {
        	Data.toast(results);
        	$scope.profileReset();
         });

    }

    $scope.getCountryList= function(){
  	  Data.get('Profile/getCountryList', {

        }).then(function (results) {
        	$scope.Emp.countryInfo = results;
        });
    }

    $scope.getStatesList = function(country_id){

  	  Data.post('Profile/getStatesList', {
  		country_id: country_id
        }).then(function (results) {
        	$scope.Emp.statesInfo = results;
        	$scope.Emp.schoolInfo.state = {};
        });
    };

    $scope.getDistrictList = function(state_id)
    {
    	  Data.post('Profile/getDistrictList', {
    		  state_id: state_id
    	        }).then(function (results) {
    	        	$scope.Emp.districtInfo = results;
    	        	$scope.Emp.schoolInfo.district = {};
    	        });

    };

      $scope.getSchoolList = function(district_id){
    	  Data.post('Profile/getSchoolList', {
    		  district_id: district_id
          }).then(function (results) {
          	$scope.Emp.schoolNameList = results;
        	$scope.Emp.schoolInfo.school = {};
        	$scope.Emp.schoolInfo.city = {};
          	$scope.Emp.schoolInfo.county = {};
          });
    }
      $scope.getCityCountyName = function(school_id){

    	  Data.post('Profile/getCityCountyName', {
    		  school_id: school_id
          }).then(function (results) {
          	$scope.Emp.schoolInfo.city = results.city;
          	$scope.Emp.schoolInfo.county = results.county;
          });
      }

   $scope.getProfile = function(uid) {
        Data.post('Profile/profile', {
            user_id: uid
        }).then(function (results) {
           // alert(JSON.stringify(results))
        	$scope.Emp = results;
        	$scope.Emp.selectedUser = {};
        	$scope.Emp.selectedSchool = {};
        	$scope.selectedCategory = {}
        });
    };

    $scope.getUserEducationDetails = function() {

    Data.get('Profile/subjectGrades', {

    }).then(function (results) {
    	//alert(JSON.stringify(results));
        $scope.eduInfo = results;
       	$scope.selectedCategory = {};
       });
    };
       $scope.init();
});