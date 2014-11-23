'use strict'

describe 'Service: User', ->

  # load the service's module
  beforeEach module 'tuxedioFrontendApp'

  # instantiate service
  User = {}
  $httpBackend = {}
  beforeEach inject ($injector) ->
    $httpBackend = $injector.get('$httpBackend')
    User = $injector.get('User')

  it 'should return a list of users when index is called', ->
    userlist =[ { user : { id : 1 } }, { user : { id : 2 } } ]
    $httpBackend.expectGET('/v1/users')
                .respond(userlist)

    result = User.index()
    $httpBackend.flush()
    expect(result[0].user.id).toEqual 1
