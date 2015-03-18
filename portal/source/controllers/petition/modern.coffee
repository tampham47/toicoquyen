'use strict'

angular.module('site.petition')
.config ($routeProvider) ->
  $routeProvider.when '/petition/modern',
    controller: 'PetitionModernCtrl'
    templateUrl: 'views/petition/modern.jade'

.controller 'PetitionModernCtrl', ($scope, $location, Post) ->
  console.log 'PetitionModernCtrl'
  $scope.message = 'Tôi có quyền'
