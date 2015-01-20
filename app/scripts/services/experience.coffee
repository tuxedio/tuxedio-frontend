'use strict'

###*
 # @ngdoc service
 # @name tuxedioFrontendApp.experiences
 # @description
 # # experiences
 # Factory in the tuxedioFrontendApp.
###
angular.module('tuxedioFrontendApp')
  .factory 'Experience',
    ($resource, API_URL) ->
      return $resource(API_URL + "experiences/:id", { id: "@id" },
        {
          'create':  { method: 'POST' },
          'index':   { method: 'GET' },
          'show':    { method: 'GET', isArray: false },
          'update':  { method: 'PUT' },
          'destroy': { method: 'DELETE' }
        }
      )
