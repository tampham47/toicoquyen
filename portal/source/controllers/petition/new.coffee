'use strict'

angular.module('site.petition')
.config ($routeProvider) ->
  $routeProvider.when '/petition/new',
    controller: 'PetitionNewCtrl'
    templateUrl: 'views/petition/new.jade'

.controller 'PetitionNewCtrl', ($scope, $location) ->
  console.log 'PetitionNewCtrl'
  $scope.page = 'Petition Page'
