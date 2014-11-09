'use strict'

angular.module('site.petition')
.config ($routeProvider) ->
  $routeProvider.when '/petition/detail',
    controller: 'PetitionDetailCtrl'
    templateUrl: 'views/petition/detail.jade'

.controller 'PetitionDetailCtrl', ($scope, $location) ->
  console.log 'PetitionDetailCtrl'
  $scope.page = 'Petition Page'
