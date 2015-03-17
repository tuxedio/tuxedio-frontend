'use strict'

###*
 # @ngdoc function
 # @name tuxedioFrontendApp.controller:MainController
 # @description
 # # MainController
 # Controller of the tuxedioFrontendApp
###
angular.module('tuxedioFrontendApp')
  .controller 'MainController', ($scope) ->
    $scope.mainSlider = [
      {
        title: "Explore..."
        description: "Lorem ipsum dolor sit amet, consectetur
         adipiscing elit. Sed efficitur nibh in nulla tristique
         porta. Quisque volutpat ligula ac est varius, at
         scelerisque ligula ornare. Proin consectetur non ex id
         viverra. Sed et suscipit leo."
        image: "/image/image.jpg"
      }
      {
        title: "Explore2..."
        description: "Lorem ipsum dolor sit amet, consectetur
         adipiscing elit. Sed efficitur nibh in nulla tristique
         porta. Quisque volutpat ligula ac est varius, at
         scelerisque ligula ornare. Proin consectetur non ex id
         viverra. Sed et suscipit leo."
        image: "/image/image.jpg"
      }
    ]
