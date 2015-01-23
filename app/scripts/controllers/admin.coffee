'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:AdminController
 # @description
 # # AdminController
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'AdminController', ($scope, Experience) ->

    # Initialize controller
    init = () ->
      Experience.index().$promise.then (data) ->
       $scope.experiences = data.experiences
    # Delete experience by ID and update list
    $scope.delete = (expId) ->
      Experience.destroy({id: expId})
      oldExperiences = $scope.experiences
      $scope.experiences = []
      angular.forEach(oldExperiences, (exp) ->
        $scope.experiences.push(exp) unless exp.id == expId
      )

    # Call Controller Initialization
    init()
