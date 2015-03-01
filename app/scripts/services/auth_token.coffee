'use strict'

###*
# @ngdoc service
# @name tuxedioFrontendApp.AuthTokenFactory
# @description
# # AuthTokenFactory
# Factory in the tuxedioFrontendApp.
###
angular.module('tuxedioFrontendApp')
  .factory 'AuthToken', ($window) ->
    localStore = $window.localStorage
    sessionStore = $window.sessionStorage
    key = 'auth-token'

    getToken =  ->
      localStore.getItem(key) || sessionStore.getItem(key)

    setToken = (token, remember) ->
      if (token)
        if (remember)
          localStore.setItem(key, token)
        else
          sessionStore.setItem(key, token)
      else
        localStore.removeItem(key)
        sessionStore.removeItem(key)

    { getToken: getToken, setToken: setToken }
