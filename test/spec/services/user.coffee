'use strict'

describe 'Service: User', ->

  # load the service's module
  beforeEach module 'tuxedioFrontendApp'

  # instantiate service
  User = {}
  $httpBackend = {}
  API_URL = {}

  beforeEach inject ($injector, _API_URL_) ->
    $httpBackend = $injector.get('$httpBackend')
    User = $injector.get('User')
    API_URL = _API_URL_

  it 'should return a list of users when index is called', ->
    userlist =[ { user : { id : 1 } }, { user : { id : 2 } } ]
    $httpBackend.expectGET(API_URL + 'users')
                .respond(userlist)

    result = User.index()
    $httpBackend.flush()
    expect(result[0].user.id).toEqual 1
