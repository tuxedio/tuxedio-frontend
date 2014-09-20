'use strict'

###*
 # @ngdoc service
 # @name tuxedioFrontendApp.experiences
 # @description
 # # experiences
 # Factory in the tuxedioFrontendApp.
###
angular.module('tuxedioFrontendApp')
  .factory 'Experiences', [
    "$resource"
    ($resource) ->
      return $resource("/v1/experiences/:id", null,
        query:
          method: "GET"
      )
  ]
