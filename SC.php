<!doctype html>
<html lang="en" ng-app="app">
<head>
    
    <meta charset="utf-8">
    <title>Study Collab</title>

      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="viewport" content="width=device-width,initial-scale=1">
          <title>Study Collab</title>

          
             <link rel="shortcut icon" href="dist/img/favicon.ico" type="image/x-icon">
<link rel="icon" href="dist/img/favicon.ico" type="image/x-icon">

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>StudyCollab</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
   <!-- Select2 -->
<link rel="stylesheet" href="plugins/select2/select2.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet" href="plugins/datatables/responsive.bootstrap.min.css">

 <!-- fullCalendar -->
  <link rel="stylesheet" href="plugins/fullcalendar/fullcalendar.min.css">
  <link rel="stylesheet" href="plugins/fullcalendar/fullcalendar.print.css" media="print">
  

  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">


<!-- Theme style -->

<!-- iCheck -->
<link rel="stylesheet" href="plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
<!-- Theme style -->

<link rel="stylesheet" href="dist/css/style.css">

              <link href="css/toaster.css" rel="stylesheet">
              <!-- <link rel="stylesheet" type="text/css" href="css/autocomplete.css"/> -->

                <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
                <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
                <!--[if lt IE 9]><link href= "css/bootstrap-theme.css"rel= "stylesheet" >

<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

<![endif]-->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ng-dialog/0.6.4/css/ngDialog.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ng-dialog/0.6.4/css/ngDialog-theme-default.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.1.0/css/responsive.dataTables.min.css">

<link rel="stylesheet" href="css/app.css">
</head>
  <body  class="hold-transition skin-blue sidebar-mini fixed  login-page">

    <div class="ng-cloak" ng-controller="MainCtrl">

        <div class="content" id="content">
            <div class="row anim slide-animation" app-view-segment="0"></div>
        </div>

        <div id=loading class=alert ng-show="loader.show"></div>

     <toaster-container toaster-options="{'time-out': 3000}"></toaster-container>

    </div>


      <!-- jQuery 2.2.3 -->
	<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
	
	
	 <!-- Angular -->
<!--	<script src="plugins/angular/angular.js"></script>
	 <script src="plugins/angular/angular-route.min.js"></script>
    <script src="plugins/angular/angular-animate.min.js" ></script>
  -->
 




	 <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.4/angular.min.js"></script>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.4/angular-animate.min.js" ></script>	
	 	 <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.4/angular-route.min.js"></script>
	 	 
	 
<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-moment-picker/0.10.1/angular-moment-picker.js"></script>-->




  
  
  <script src="plugins/angular/angular-route-segment.js"></script>
  <script src="plugins/angular/angular-datatables.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/ngStorage/0.3.11/ngStorage.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/ng-dialog/0.6.4/js/ngDialog.js"></script>
  <script src="plugins/angular/toaster.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
 

	<script src="plugins/select2/select2.full.min.js"></script>
		<script src="plugins/validation/jquery.validate.min.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.js"></script>
    <script src="plugins/iCheck/icheck.min.js"></script>
     	<script src="plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script src="https://cdn.datatables.net/responsive/2.1.0/js/dataTables.responsive.min.js"></script>
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>


	<script src="plugins/ui-bootstrap/ui-bootstrap-tpls-0.9.0.js"></script>

<script src="plugins/input-mask/jquery.inputmask.js"></script>


<script src="plugins/fullcalendar/moment.js"></script>
 <script src="app/calendar.js"></script>
<script src="plugins/fullcalendar/fullcalendar.js"></script>
<script src="plugins/fullcalendar/gcal.js"></script>
	 <link href="plugins/angular/angular-moment-picker.css" rel="stylesheet">
	 	 
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment-with-locales.js"></script>
  <script src="plugins/angular/angular-moment-picker.js"></script>
<!--<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?libraries=places&sensor=false"></script>-->


    <script src="app/app.js"></script>
       <script src="app/data.js"></script>
  <script src="app/directives.js"></script>
  
  <script src="app/ngAutocomplete.js"></script>
<!--  <script src="app/factory.js"></script>-->
                        	<script src="app/Controller/authCtrl.js"></script>
   	<script src="app/Controller/resetpwdCtrl.js"></script>
   	<script src="app/Controller/activationCtrl.js"></script>
	<script src="app/Controller/homeCtrl.js"></script>
	<script src="app/Controller/profileCtrl.js"></script>
	<script src="app/Controller/usergroupCtrl.js"></script>
	<script src="app/Controller/groupCtrl.js"></script>
	<script src="app/Controller/dashboardCtrl.js"></script>
	<script src="app/Controller/contentCtrl.js"></script>
	<script src="app/Controller/uploadCtrl.js"></script>
	<script src="app/Controller/groupMemberCtrl.js"></script>
	<script src="app/Controller/questionCtrl.js"></script>
	<script src="app/Controller/chatCtrl.js"></script>
	<script src="app/Controller/tutorCtrl.js"></script>	
<script src="app/Controller/scheduleCtrl.js"></script>	

	<script src="app/Controller/calendarCtrl.js"></script>
	<script src="app/Controller/requestCtrl.js"></script>	
</body>
</html>