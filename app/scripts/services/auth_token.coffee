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
      store = $window.localStorage
      key = 'auth-token'
      getToken =  ->
        store.getItem(key)

      setToken = (token) ->
        if (token)
          store.setItem(key, token)
        else
          store.removeItem(key)
      return {
        getToken: getToken,
        setToken: setToken
      }


