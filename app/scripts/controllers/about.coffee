'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
