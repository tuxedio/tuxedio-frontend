'use strict'

###*
 # @ngdoc service
 # @name tuxedioFrontendApp.user
 # @description
 # # user
 # Factory in the tuxedioFrontendApp.
###
angular.module('tuxedioFrontendApp')
  .factory 'User',
    ($resource, API_URL) ->
      return $resource(API_URL + "users/:id", { id: "@id" },
        {
          'create':  { method: 'POST' },
          'index':   { method: 'GET', isArray: true },
          'show':    { method: 'GET', isArray: false },
          'update':  { method: 'PUT' },
          'destroy': { method: 'DELETE' }
        }
      )
