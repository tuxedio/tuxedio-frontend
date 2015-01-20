'use strict'

describe 'Controller: AdminCtrl', ->

  $q = {}
  $rootScope = {}
  $scope = {}
  mockExperience = {}
  mockExperienceResponse = {"experiences":[{"id":1},{"id":2}]}
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
    }

    spyOn(mockExperience, 'index').andCallThrough()

    $controller('AdminCtrl', {
      '$scope': $scope,
      'Experience': mockExperience
    })


  beforeEach ->
    queryDeferred.resolve(mockExperienceResponse)
    $rootScope.$apply()

  it 'should query the Experience service', ->
    expect(mockExperience.index).toHaveBeenCalled();

  it 'should attach a list of experiences to the scope', ->
    expect($scope.experiences).toEqual([{"id":1},{"id":2}])
