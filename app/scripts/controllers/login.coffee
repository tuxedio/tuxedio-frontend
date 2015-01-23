'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:LoginController
 # @description
 # # LoginController
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'LoginController', ($scope, Session, API_URL) ->
    $scope.message = ''
    $scope.signedin = Session.authenticated()
    $scope.submit = ->
      Session.authenticate($scope.login).then(
        success =  () ->
          onSuccess()
        error = () ->
          onError()
        )

    $scope.signout = ->
      Session.unauthenticate()
      $scope.signedin = false

    onSuccess = ->
      $scope.signedin = true
      $scope.message = "Successful login"

    onError = ->
      $scope.message = 'Error: Invalid email or password'
