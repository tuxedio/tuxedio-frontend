'use strict'

describe 'Service: AuthToken', ->

  # load the service's module
  beforeEach module 'tuxedioFrontendApp'

  # instantiate service
  AuthToken = {}


  beforeEach inject (_AuthToken_) ->
    AuthToken = _AuthToken_

  it 'should should be able to set and remove a token', ->
    # Set token
    token = 'token-xxxx'
    AuthToken.setToken(token)
    # Retrieve token
    storedToken = AuthToken.getToken()
    expect(storedToken).toEqual 'token-xxxx'
    # Remove Token
    AuthToken.setToken()
    nullToken = AuthToken.getToken()
    expect(nullToken).toEqual null
