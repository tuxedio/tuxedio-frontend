'use strict'

describe 'Controller: LoginCtrl', ->

  # load the controller's module
  beforeEach module 'tuxedioFrontendApp'

  LoginCtrl = {}
  scope = {}
  $httpBackend = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope, $injector) ->
    scope = $rootScope.$new()
    LoginCtrl = $controller 'LoginCtrl', {
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
