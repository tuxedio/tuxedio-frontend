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
    $scope.delete = (expId) ->
      Experience.destroy({id: expId}).$promise.then (value) ->
        lodash.remove $scope.experiences (exp) ->
          exp.id == expId

    # Call Controller Initialization
    init()
