'use strict'

angular.module('site.petition')
.config ($routeProvider) ->
  $routeProvider.when '/petition/new',
    controller: 'PetitionNewCtrl'
    templateUrl: 'views/petition/new.jade'

.controller 'PetitionNewCtrl', ($scope, $location, Post) ->
  console.log 'PetitionNewCtrl'
  $scope.page = 'Petition Page'

  # single page application
  $scope.submit = ->
    console.log 'submit', $scope.post
    model = $scope.post
    Post.create(model).$promise.then (r) ->
      console.log 'data', r
      $location.path '/petition/detail/' + r.data.id
    , (err) ->
      console.log 'err', err

