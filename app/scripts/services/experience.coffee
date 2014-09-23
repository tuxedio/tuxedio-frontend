'use strict'

###*
 # @ngdoc service
 # @name tuxedioFrontendApp.experiences
 # @description
 # # experiences
 # Factory in the tuxedioFrontendApp.
###
angular.module('tuxedioFrontendApp')
  .factory 'Experience', [
    "$resource"
    ($resource) ->
      return $resource("/v1/experiences/", null,
        query:
          method: "GET"
      )
  ]
