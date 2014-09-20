'use strict'

describe 'Controller: AdminCtrl', ->

  # load the controller's module
  beforeEach module 'tuxedioFrontendApp'

  AdminCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    AdminCtrl = $controller 'AdminCtrl', {
      $scope: scope
    }

  it 'should attach a list of experiences to the scope', ->
    expect(!!scope.list).toBe true
