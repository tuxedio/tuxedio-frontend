'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:AdminCtrl
 # @description
 # # AdminCtrl
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'AdminCtrl', ($scope, $resource) ->
    Entry = $resource('/v1/experiences', null, {'query': { method: 'GET' }})
    $scope.list = Entry.query()
