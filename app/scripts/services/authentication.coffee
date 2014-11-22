'use strict'

###*
 # @ngdoc service
 # @name tuxedioFrontendApp.authIntercepter
 # @description
 # # authentication
 # Factory in the tuxedioFrontendApp.
###
angular.module('tuxedioFrontendApp')
  .factory 'authIntercepter', ($rootScope, $q, $window) ->
      #intercept Request to add authentication token to header
      request: (config) ->
        config.headers = config.headers || {}
        authToken = $window.localStorage.token
        if authToken then config.headers.Authentication = 'Bearer ' + authToken
        return config

      # Error Handler
      responseError: (rejection) ->
        # TODO: 401 response handler
        if rejection.status == 401
          alert('A 401 was reached')
        return $q.reject(rejection)

