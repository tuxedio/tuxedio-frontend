'use strict'

###*
 # @ngdoc service
 # @name tuxedioFrontendApp.authIntercepter
 # @description
 # # authentication
 # Factory in the tuxedioFrontendApp.
###
angular.module('tuxedioFrontendApp')
  .factory 'authIntercepter', ($rootScope, $q, AuthToken) ->
      #intercept Request to add authentication token to header
      request: (config) ->
        config.headers = config.headers || {}
        authToken = AuthToken.getToken()
        if authToken then config.headers.Authentication = 'Bearer ' + authToken
        return config

      # Error Handler
      responseError: (rejection) ->
        # TODO: 401 response handler
        return $q.reject(rejection)
