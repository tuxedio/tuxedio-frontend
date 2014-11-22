'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:LoginCtrl
 # @description
 # # LoginCtrl
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'LoginCtrl', ($scope, $http, $window) ->
    $scope.message = ''
    $scope.signedin = if $window.localStorage.token then true else false
    $scope.submit = ->
      $http
        .post('http://localhost:3000/v1/login.json', $scope.login)
        .success (data, status, headers, config) ->
          console.log(data)
          $window.localStorage.token = data.token
          $scope.signedin = true
          $scope.message = "Successful login"
        .error (data, status, headers, config) ->
          # Remove token if user fails to log in
          delete $window.localStorage.token

          #Error Handling:
          $scope.message = 'Error: Invalid email or password'

    $scope.signout = ->
      $scope.signedin = false
      delete $window.localStorage.token

