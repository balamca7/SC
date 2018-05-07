var app = angular.module('app', ['ngRoute', 'ngAnimate', 'route-segment', 'view-segment','toaster', 'ui.bootstrap','ngStorage','ngDialog','datatables', 'chartjs-directive']);

app.config(function($routeSegmentProvider, $routeProvider) {
    $routeSegmentProvider.options.autoLoadTemplates = true;
    $routeSegmentProvider
        .when('/login',          's1')
        .when('/home',          's7')
        .when('/home/dashboard',    's7.dashboard')
        .when('/home/profile/:id/:usergroup',    's7.profile')
        .when('/home/category',    's7.category')
        .when('/home/subcategory',    's7.subcategory')
        .when('/home/country',      's7.country')
        .when('/home/state',    's7.state')
        .when('/home/county',    's7.county')
        .when('/home/city',    's7.city')
        .when('/home/district',    's7.district')
        .when('/home/school',    's7.school')
        .when('/home/tutor',    's7.tutor')
        .when('/home/grade',    's7.grade')
        .when('/home/user',    's7.user')

        
        .when('/home/userReports',    's7.userReports')
        .when('/home/volunteerReports',    's7.volunteerReports')
        .when('/home/tutorReports',    's7.tutorReports')
         .when('/home/ratingReports',    's7.ratingReports')
        
        .segment('s1', {
            templateUrl: 'templates/login.html',
            controller: 'MainCtrl',
            resolve: {
                data: function($timeout) {
                    return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                }
            },
            untilResolved: {
                templateUrl: 'templates/loading.html'
            }
         
        })

        .segment('s7', {
                templateUrl: 'templates/admin.html',
                
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                })
        .within()
            .segment('dashboard', {
                'default': true,
                templateUrl: 'templates/admin/dashboard.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            .segment('profile', {
                templateUrl: 'templates/admin/profile.html',
                dependencies: ['id', 'usergroup'],
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                })

            .segment('category', {
                templateUrl: 'templates/admin/category.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            .segment('subcategory', {
                templateUrl: 'templates/admin/subCategory.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            .segment('country', {
                templateUrl: 'templates/admin/country.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            .segment('state', {
                templateUrl: 'templates/admin/state.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            .segment('district', {
                templateUrl: 'templates/admin/district.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            .segment('city', {
                templateUrl: 'templates/admin/city.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            .segment('county', {
                templateUrl: 'templates/admin/county.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
                        .segment('school', {
                templateUrl: 'templates/admin/school.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            .segment('tutor', {
                templateUrl: 'templates/admin/tutor.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            .segment('grade', {
                templateUrl: 'templates/admin/grade.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            


           
           .segment('user', {
                templateUrl: 'templates/admin/user.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            
            .segment('userReports', {
                templateUrl: 'templates/admin/reports/userReports.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            .segment('volunteerReports', {
                templateUrl: 'templates/admin/reports/volunteerReports.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            .segment('tutorReports', {
                templateUrl: 'templates/admin/reports/tutorReports.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            .segment('ratingReports', {
                templateUrl: 'templates/admin/reports/userRating.html',
                resolve: {
                    data: function($timeout) {
                        return $timeout(function() { return 'SLOW DATA CONTENT'; }, 2000);
                    }
                },
                untilResolved: {
                    templateUrl: 'templates/loading.html'
                }
                
            })
            
            
            .up()


    $routeProvider.otherwise({redirectTo: '/login'});

}).config(function($locationProvider) {
	$locationProvider.html5Mode(false);
	    $locationProvider.hashPrefix('!');
}).run(function($rootScope, $location, $http,Data, $localStorage) {

	$rootScope.$on("$routeChangeStart", function(event, next, current) {

		$rootScope.authenticated = false;
		//alert(JSON.stringify($localStorage.currentUser))

		if($localStorage.currentUser != undefined)
		{
                    $http.defaults.headers.common.Authorization = 'Bearer ' + $localStorage.currentUser.token;

			$rootScope.authenticated = true;
			$rootScope.uid = $localStorage.currentUser.uid;
			$rootScope.name = $localStorage.currentUser.name;
			$rootScope.email = $localStorage.currentUser.email;
			$rootScope.image = $localStorage.currentUser.image;
		} else {
			var nextUrl = next.$$route.originalPath;

			if (nextUrl == '/signup' || nextUrl == '/login' || nextUrl == '/forgetpassword' || nextUrl == '/resetpassword/:id' || nextUrl == '/UserActivation/:id' || nextUrl == '/signup') {

			} else {
				$location.path("/login");
			}
		}

	});
});




app.value('loader', {show: false});

app.controller('MainCtrl', function($scope, $routeSegment, loader) {

    $scope.$routeSegment = $routeSegment;
    $scope.loader = loader;

    $scope.$on('routeSegmentChange', function() {
        loader.show = false;
    })
});
