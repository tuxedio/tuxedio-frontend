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

    # Initialize controller
    init = () ->
      $scope.experiences = Experience.index()

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
