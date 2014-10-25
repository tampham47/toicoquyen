'use strict'

angular.module('site.petition', [])
.config ($routeProvider) ->
  $routeProvider.when '/petition',
    controller: 'PetitionCtrl'
    templateUrl: 'views/petition/index.jade'

.controller 'PetitionCtrl', ($scope, $location) ->
  console.log 'PetitionCtrl'
  $scope.page = 'Petition Page'
