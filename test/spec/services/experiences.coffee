'use strict'

describe 'Service: Experiences', ->

  # load the service's module
  beforeEach module 'tuxedioFrontendApp'

  # instantiate service
  experiences = {}
  beforeEach inject (_Experiences_) ->
    experiences = _Experiences_

  it 'should do something', ->
    expect(!!experiences).toBe true
