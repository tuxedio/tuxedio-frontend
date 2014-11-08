'use strict'

describe 'Controller: AdminCtrl', ->

  AdminCtrl = {}
  scope = {}
  Experience = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope, _Experience_) ->
    scope = $rootScope.$new()
    Experience = _Experience_
    spyOn(Experience, 'index').andReturn([{"id":1},{"id":2}])
    AdminCtrl = $controller 'AdminCtrl', {
      $scope: scope
    }

  it 'should attach a list of experiences to the scope', ->
    expect(Experience.index).toHaveBeenCalled()
    expect(scope.experiences).toEqual([{"id":1},{"id":2}])
