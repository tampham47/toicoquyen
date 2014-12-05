'use strict'

angular.module('site.petition')
.config ($routeProvider) ->
  $routeProvider.when '/petition/new',
    controller: 'PetitionNewCtrl'
    templateUrl: 'views/petition/new.jade'

.controller 'PetitionNewCtrl', ($scope, $location, Post, Auth) ->
  console.log 'PetitionNewCtrltest', Auth
  $scope.page = 'Petition Page'

  $scope.submit = ->
    console.log 'submit', $scope.post
    model = $scope.post
    model._user = Auth.user._id
    console.log model
    Post.create(model).$promise.then (r) ->
      console.log 'data', r
      $location.path '/petition/detail/' + r.data.id
    , (err) ->
      console.log 'err', err

