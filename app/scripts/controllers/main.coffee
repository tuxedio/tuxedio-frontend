'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'MainCtrl', ($scope, $auth, $http, $q) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
