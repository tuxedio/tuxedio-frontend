'use strict'

describe 'Controller: LoginController', ->

  # load the controller's module
  beforeEach module 'tuxedioFrontendApp'

  LoginController = {}
  scope = {}
  $httpBackend = {}
  rememberedUser = {
    user: {
      email: 'example@example.com',
      password: 'foobar',
      remember:true
    }
  }

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope, $injector) ->
    scope = $rootScope.$new()
    scope.login = rememberedUser
    LoginController = $controller 'LoginController', {
      $scope: scope
    }
    $httpBackend = $injector.get('$httpBackend')

  afterEach ->
    $httpBackend.verifyNoOutstandingExpectation()
    $httpBackend.verifyNoOutstandingRequest()


  it 'should succeed with valid login', ->
    $httpBackend.expectPOST('v1/login.json')
      .respond(201, token: 'token')
    scope.submit()
    $httpBackend.flush()
    expect(scope.signedin).toBeTruthy()

  it 'should successfully log out', ->
    $httpBackend.expectPOST('v1/login.json')
      .respond(201, token: 'token')
    scope.submit()
    $httpBackend.flush()
    expect(scope.signedin).toBeTruthy()
    scope.signout()
    expect(scope.signedin).not.toBeTruthy()


  it 'should fail with invalid login credentials', ->
    $httpBackend.expectPOST('v1/login.json')
      .respond(401)
    scope.submit()
    $httpBackend.flush()
    expect(scope.signedin).not.toBeTruthy()
