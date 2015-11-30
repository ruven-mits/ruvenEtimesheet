'use strict'

angular.module 'etimesheetApp'
.controller 'ForgotPasswordCtrl', ($scope, $meteor, $stateParams, $state, $mdToast) ->
  $scope.credentials = 
    email: ''

  $scope.error = ''

  

  $scope.forgotPwd = ()->
    if ($scope.credentials.email !='')
      $meteor.forgotPassword({email:$scope.credentials.email}).then (->
        $state.go 'login'
        $mdToast.show($mdToast.simple().content('Check Email for reset'))
      ), (err) ->
        $scope.error = 'Error Sending forgot password email - ' + err
    else
      $scope.error = 'Enter your email address'

