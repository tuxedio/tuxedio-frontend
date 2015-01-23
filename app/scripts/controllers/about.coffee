'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:AboutController
 # @description
 # # AboutController
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'AboutController', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
