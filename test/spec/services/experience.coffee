'use strict'

describe 'Service: Experience', ->

  # instantiate service
  experience = {}
  beforeEach inject (_Experience_) ->
    experience = _Experience_

  it 'should do something', ->
    expect(!!experience).toBe true
