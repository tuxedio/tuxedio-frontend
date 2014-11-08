$authProvider = null
$auth = null
$http = null
$q = null
$location = null
$cookieStore = null
$window = null
$timeout = null
$rootScope = null
$interpolate = null

beforeEach ->
  module "tuxedioFrontendApp", (_$authProvider_, $provide) ->
    $authProvider = _$authProvider_
    return

  inject ($injector) ->
    $auth = $injector.get("$auth")
    $http = $injector.get("$http")
    $q = $injector.get("$q")
    $location = $injector.get("$location")
    $cookieStore = $injector.get("$cookieStore")
    $window = $injector.get("$window")
    $timeout = $injector.get("$timeout")
    $rootScope = $injector.get("$rootScope")
    $interpolate = $injector.get("$interpolate")
    return

  return
