'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:AdminCtrl
 # @description
 # # AdminCtrl
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'AdminCtrl', ($scope, Experience) ->
    $scope.list = Experience.query()
