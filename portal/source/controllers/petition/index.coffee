'use strict'

angular.module('site.petition', [])
.config ($routeProvider) ->
  $routeProvider.when '/',
    controller: 'PetitionCtrl'
    templateUrl: 'views/petition/index.jade'

.controller 'PetitionCtrl', ($scope, $location) ->
  console.log 'PetitionCtrl'
  $scope.page = 'Petition Page'
