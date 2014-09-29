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
      return $resource("/v1/experiences/:id", { id: "@id" },
        {
          'create':  { method: 'POST' },
          'index':   { method: 'GET', isArray: true },
          'show':    { method: 'GET', isArray: false },
          'update':  { method: 'PUT' },
          'destroy': { method: 'DELETE' }
        }
      )
  ]
