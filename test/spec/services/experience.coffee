'use strict'

describe 'Service: Experience', ->

  # load the service's module
  beforeEach module 'tuxedioFrontendApp'

  # instantiate service
  Experience = {}
  $httpBackend = {}
  API_URL = {}

  beforeEach inject ($injector, _API_URL_) ->
    $httpBackend = $injector.get('$httpBackend')
    Experience = $injector.get('Experience')
    API_URL = _API_URL_

  it 'should return a list of experiences when index is called', ->
    experiencelist = [ { experience : { name : "Experience 1" } },
                       { experience : { name : "Experience 2" } },
                       { experience : { name : "Experience 3" }}
                     ]
    $httpBackend.expectGET(API_URL + 'experiences')
                .respond(experiencelist)

    result = Experience.index()
    $httpBackend.flush()
    expect(result[0].experience.name).toEqual "Experience 1"
    expect(result.length).toBe 3
