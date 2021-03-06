'use strict'

describe 'Controller: AboutController', ->

  # load the controller's module
  beforeEach module 'tuxedioFrontendApp'

  AboutController = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    AboutController = $controller 'AboutController', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
