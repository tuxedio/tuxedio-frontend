'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:LoginCtrl
 # @description
 # # LoginCtrl
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'LoginCtrl', ($scope, $auth) ->
    $scope.handleLoginBtnClick = ->
      $auth.submitLogin($scope.loginForm)
        .then((resp) ->
          # Handle success response
          console.log("Submit successfull")
        ).catch (resp) ->
          # handle error response
          console.log("Submit Failed")

