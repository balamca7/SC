app
		.controller(
				'scheduleCtrl',
				function($scope, $filter, $rootScope, $routeParams, $location,
						$http, ngDialog, Data, $interval, $compile) {
					// initially set those objects to null to avoid undefined
					// error
					// alert("scheduleCtrl");
					var tutor_userid = $routeParams.id;
					var date = new Date();
					var d = date.getDate();
					var m = date.getMonth();
					var y = date.getFullYear();
					$scope.init = function() {
						$scope.events = [];
						//$scope.getevents();
						//$scope.eventSources = [$scope.events,$scope.eventSource, $scope.eventsF];

						$scope.eventSources = [$scope.events];
						$scope.schdReq = {
							"tutor_name" : tutor_userid,
							//"title" : "Appointment 1",
							//"req_date" : "08/23/2017",
							//"start_time" : "09:00",
							"location":""
									
						};
						 $scope.schdeuleList = [];
						
					};
					
					/* event source that contains custom events on the scope */
					$scope.getevents = function() {
						Data.post('Schedule/getScheduleEvent', {tutor_userid : tutor_userid})
								.then(function(results) {
									//alert(JSON.stringify(results));
									
									 for(var i = 0; i < results.length; i++)
									{
										$scope.events[i] = { 
																title: results[i].title,
																start: new Date(results[i].start), 
																end: new Date(results[i].end),
																  stick:true 
																};
									}
									
									//$scope.events = results;
									
								});
					};



 



				
					/*$scope.events = [ {
						title : '10am-11am',
						start : new Date(y, m, 1, 10, 0)
					}, {
						title : 'Long Event',
						start : new Date(y, m, d - 5),
						end : new Date(y, m, d - 2)
					}, {
						id : 999,
						title : 'Repeating Event',
						start : new Date(y, m, d - 3, 16, 0),
						allDay : false
					}, {
						id : 999,
						title : 'Repeating Event',
						start : new Date(y, m, d + 4, 16, 0),
						allDay : false
					}, {
						title : 'Birthday Party',
						start : new Date(y, m, d + 1, 19, 0),
						end : new Date(y, m, d + 1, 22, 30),
						allDay : false
					}, {
						title : 'Click for Google',
						start : new Date(y, m, 28),
						end : new Date(y, m, 29),
						url : 'http://google.com/'
					} ];  */
					/* event source that calls a function on every view switch */
				/*	$scope.eventsF = function(start, end, timezone, callback) {
						var s = new Date(start).getTime() / 1000;
						var e = new Date(end).getTime() / 1000;
						var m = new Date(start).getMonth();
						var events = [ {
							title : 'Feed Me ' + m,
							start : s + (50000),
							end : s + (100000),
							allDay : false,
							className : [ 'customFeed' ]
						} ];
						callback(events);
					};  */

					/* alert on eventClick */
					$scope.alertOnEventClick = function(date, jsEvent, view) {
						$scope.alertMessage = (date.title + ' was clicked ');
					};
					/* Change View */
					$scope.renderCalender = function(calendar) {
						if (uiCalendarConfig.calendars[calendar]) {
							uiCalendarConfig.calendars[calendar]
									.fullCalendar('render');
						}
					};
					/* Render Tooltip */
					$scope.eventRender = function(event, element, view) {
						element.attr({
							'tooltip' : event.title,
							'tooltip-append-to-body' : true
						});
						$compile(element)($scope);
					};
					$scope.uiConfig = {
						calendar : {
							height : 450,
							editable : true,
							timezone : "America/Los_Angeles",
							header : {
								left : 'prev,next today',
								center : 'title',
								right : 'month,basicWeek,basicDay'
							},
							/*
							 * header:{ left: 'title', center: '', right: 'today
							 * prev,next' },
							 */
							eventClick : $scope.alertOnEventClick,
							eventDrop : $scope.alertOnDrop,
							eventResize : $scope.alertOnResize,
							eventRender : $scope.eventRender,
							/*dayClick : function(date, jsEvent, view) {
								$(this).css('cursor', 'hand');
								var d = new Date(date.format())
								if (!isDateValid(d)) {

									var curr_date = d.getDate();
									var curr_month = d.getMonth() + 1; // Months
																		// are
																		// zero
																		// based
									var curr_year = d.getFullYear();
									// var date = curr_date + "-" + curr_month +
									// "-" + curr_year;
									var datestring = ("0" + (d.getMonth() + 1))
											.slice(-2)
											+ "/"
											+ ("0" + d.getDate()).slice(-2)
											+ "/" + d.getFullYear();
									// alert(date + ' was clicked ');
									$scope.schdReq = {
										"tutor_name" : tutor_userid,
										"req_date" : datestring,
										"location":""
									};
									// $scope.schdReq = datestring;
									// $(!this).css('background-color',
									// 'white');
									// $(this).css('background-color', 'red');

								} else {
									alert("Not allowed to schedule the appointment")
								}

							}*/
						}
					};

					var isDateValid = function(dateTime) {
						// return $scope.model != null && $scope.model.date !=
						// null && $scope.model.date !== '';

						if (dateTime === null)
							return false;
						var day = dateTime.getDate();
						var month = dateTime.getMonth();
						var year = dateTime.getFullYear();
						var composedDate = new Date();
						return composedDate.getDate() >= day
								&& composedDate.getMonth() >= month
								&& composedDate.getFullYear() >= year;

					};
					$scope.getEndTime = function(req_date, start_time,
							no_of_hour) {
						var date = req_date + " " + start_time;
					  // var d =$filter('date')(new Date(date), 'yyyy/MM/dd');
						var d = new Date(date);
						sethour = d.getHours() + (no_of_hour * 1);
						var dd = d.setHours(sethour);
						$scope.schdReq.end_time = $filter('date')(new Date(dd),
								'HH:mm');
					};
					

					$scope.addSchedule = function(schdData) {

						var len = $scope.schdeuleList.length;
						if (len == 0) {
							$scope.schdeuleList.push(schdData);
							$scope.schdReq = {
								"tutor_name" : tutor_userid,
								"location":""
							};
							$scope.test = false;
						}
						else if(len >2)
						{
							alert("Max 3 schedule only allowed.=====");
							return;
						} else {
							angular
									.forEach(
											$scope.schdeuleList,
											function(value, key) {
												if (value.req_date == schdData.req_date
														&& (value.start_time == schdData.start_time || value.end_time == schdData.end_time)) {
													alert("Already added");
													return;
													// $scope.schdeuleList.splice(key,1);
												} else {
													if (len < 3) {
														$scope.schdeuleList
																.push(schdData);
														$scope.schdReq = {
															"tutor_name" : tutor_userid,
															"location" : ""
														};
														$scope.test = false;
													} else {
														alert("Max 3 schedule only allowed.+++");
														return;
													}
												}
											});
						}

						
					};

					$scope.remove = function(index) {
						$scope.schdeuleList.splice(index, 1);
						//delete $scope.schdeuleList[index];
					}
					$scope.submitSchedule = function(schdeuleList) {
						//alert(JSON.stringify(schdeuleList));
						Data.post('Schedule/submitSchedule', schdeuleList)
								.then(function(results) {
									//alert(JSON.stringify(results));
									Data.toast(results);
									if (results.status == "success") {
										$scope.schdeuleList = [];
										$location.path('/home/myrequest');
									}
								});
					};

					$scope.init();
				});