'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:MainController
 # @description
 # # MainController
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'MainController', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
