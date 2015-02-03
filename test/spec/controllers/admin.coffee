'use strict'

describe 'Controller: AdminController', ->

  $q = {}
  $rootScope = {}
  $scope = {}
  mockExperience = {}
  queryDeferred = {}

  # load the controller's module
  beforeEach module 'tuxedioFrontendApp'

  beforeEach inject ($controller, _$q_, _$rootScope_) ->
    $q = _$q_
    $rootScope = _$rootScope_
    $scope = $rootScope.$new()

    mockExperience = {
      index:  ->
        queryDeferred = $q.defer()
        return {$promise: queryDeferred.promise}
      delete:  ->
        queryDeferred = $q.defer()
        return {$promise: queryDeferred.promise}
    }

    spyOn(mockExperience, 'index').andCallThrough()
    spyOn(mockExperience, 'delete').andCallThrough()

    $controller 'AdminController', {
      '$scope': $scope,
      'Experience': mockExperience
    }


  describe '#index', ->
    beforeEach ->
      mockExperienceResponse = {"experiences":[{"id":1},{"id":2}]}
      queryDeferred.resolve(mockExperienceResponse)
      $rootScope.$apply()

    it 'should query the Experience service', ->
      expect(mockExperience.index).toHaveBeenCalled()

    it 'should attach a list of experiences to the scope', ->
      expect($scope.experiences).toEqual([{"id":1},{"id":2}])

  describe '#delete', ->
    xit 'queries the Experience service', ->
    xit 'removes experience from scope with authenticated request', ->
    xit 'does not remove experience from scope with unauthenticated request', ->
