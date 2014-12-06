'use strict'

angular.module('site.petition', [])
.config ($routeProvider) ->
  $routeProvider.when '/',
    controller: 'PetitionCtrl'
    templateUrl: 'views/petition/index.jade'

.controller 'PetitionCtrl', ($scope, $location, Post) ->
  console.log 'PetitionCtrl'
  $scope.page = 'Petition Page'

  Post.getAll().$promise.then (result) ->
    console.log 'data', result
    _.forEach result.data, (item) ->
      item.createdDate = moment(item.createdDate)
    $scope.data = result.data
  , (err) ->
    console.log 'err', err
