'use strict'

angular.module 'etimesheetApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'userdashboard',
    url: '/userdashboard'
    templateUrl: 'client/userdashboard/userdashboard.view.html'
    controller: 'UserdashboardCtrl'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireValidUser((user)->
          if(user.profile.role=="normal") 
            if(user.profile.isActive==0)
              return 'NOTVERIFIED'
             return true;
           return 'UNAUTHORIZED'
         )
      ]
  .state 'timesheet',
    url: '/timesheet'
    templateUrl: 'client/userdashboard/add-timesheet.view.html'
    controller: 'AddTimesheetController'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireValidUser((user)->
          if(user.profile.role=="normal") 
            if(user.profile.isActive==0)
              return 'NOTVERIFIED'
             return true;
           return 'UNAUTHORIZED'
         )
      ]
  
  .state 'add-leave-request',
    url: '/add-leave-request'
    templateUrl: 'client/userdashboard/add-leave-request.view.html'
    controller: 'AddLeaveRequestController'
    resolve:
      currentUser: ['$meteor', ($meteor) ->
        $meteor.requireValidUser((user)->
          if(user.profile.role=="normal") 
            if(user.profile.isActive==0)
              return 'NOTVERIFIED'
             return true;
           return 'UNAUTHORIZED'
         )
      ]