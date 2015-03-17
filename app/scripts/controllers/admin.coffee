'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:AdminController
 # @description
 # # AdminController
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'AdminController', ($scope, Experience, lodash) ->

    # Initialize controller
    init = () ->
      Experience.index().$promise.then (data) ->
        $scope.experiences = data.experiences

    # Delete experience by ID and update list
    $scope.delete = (id) ->
      Experience.destroy({id: id}).$promise.then ->
        lodash.remove $scope.experiences, (exp) ->
          exp.id == id

    # Call Controller Initialization
    init()
