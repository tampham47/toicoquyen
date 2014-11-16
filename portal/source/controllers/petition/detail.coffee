'use strict'

angular.module('site.petition')
.config ($routeProvider) ->
  $routeProvider.when '/petition/detail/:id',
    controller: 'PetitionDetailCtrl'
    templateUrl: 'views/petition/detail.jade'

.controller 'PetitionDetailCtrl', ($scope, $location, $routeParams, Post) ->
  console.log 'PetitionDetailCtrl', $routeParams.id
  $scope.page = 'Petition Page'

  Post.getById({id: $routeParams.id}).$promise.then (r) ->
    $scope.data = r.data
    console.log 'data', $scope.data
  , (err) ->
    console.log 'err', err
