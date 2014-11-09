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
    # model.Creator = CurrentUser.id
    Post.create(model).$promise.then (data) ->
      console.log 'data', data
      $location.path '/'
    , (err) ->
      console.log 'err', err

