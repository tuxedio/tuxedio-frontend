'use strict'

describe 'Service: Experience', ->

  # load the service's module
  beforeEach module 'tuxedioFrontendApp'

  # instantiate service
  experience = {}
  beforeEach inject (_Experience_) ->
    experience = _Experience_

  it 'should do something', ->
    expect(!!experience).toBe true
