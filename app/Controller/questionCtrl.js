app.controller('questionCtrl', function ($scope, $rootScope, $routeParams, $location, $http,ngDialog, Data, $interval) {
   //alert("questionCtrl");
   $scope.AskQuest = {"selectedUser" : {"user_id":"All", "User" : "User"}};
   $scope.init = function() {
	$scope.getAllUsersGroups();
       $scope.getCategoryList();
   };

   $scope.getAllUsersGroups = function(){
	   Data.get('Dashboard/getAllUsersGroups', {
	       }).then(function (results) {
		   // 	 alert(JSON.stringify(results));
	       	$scope.Alluser = results;
	       });
   };

   $scope.getCategoryList = function(){
	   Data.get('Dashboard/getCategory', {
	       }).then(function (results) {
		    	// alert(JSON.stringify(results));
	       	$scope.Category = results;
	       });
   };

   $scope.getSubCategoryList = function(categoryId){

	   Data.post('Dashboard/getSubCategory', {
		   categoryId : categoryId
	       }).then(function (results) {
		  //  	 alert(JSON.stringify(results));
	       	$scope.subCategory = results;
	       });

   };


   $scope.postQuestion = function(AskQuest){
	   //alert(JSON.stringify(AskQuest));
	   Data.put('Dashboard/Postquestion', AskQuest).then(function (results) {
    	   //alert(JSON.stringify(results));
	    	 Data.toast(results);
	    	 if(results.status == "success")
     		{
	    		 $scope.AskQuest = {"selectedUser" : {"user_id":"All", "User" : "User"}};

         	}
       });
   }
   $scope.init();

});
