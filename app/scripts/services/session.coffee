'use strict'

###*
 # @ngdoc service
 # @name tuxedioFrontendApp.Session
 # @description
 # # Session
 # Factory in the tuxedioFrontendApp.
###
angular.module('tuxedioFrontendApp')
  .factory 'Session', ($http, AuthToken, API_URL) ->
    authenticate = (login) ->
      $http
      .post(API_URL + 'login.json', login)
      .success (data, status, headers, config) ->
        AuthToken.setToken(data.token, login.user.remember)
      .error (data, status, headers, config) ->
        # Remove token if user fails to log in
        AuthToken.setToken()

    unauthenticate = ->
      AuthToken.setToken()

    authenticated = ->
      if AuthToken.getToken() then true else false

    return {
      authenticate: authenticate,
      unauthenticate: unauthenticate,
      authenticated: authenticated
    }
