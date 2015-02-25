'use strict'

angular.module('site.petition', [])
.config ($routeProvider) ->
  $routeProvider.when '/',
    controller: 'PetitionCtrl'
    templateUrl: 'views/petition/index.jade'

.controller 'PetitionCtrl', ($scope, $location, Post, Auth) ->
  console.log 'PetitionCtrl'
  $scope.page = 'Petition Page'

  Post.getAll().$promise.then (result) ->
    _.forEach result.data, (item) ->
      item.createdDate = moment(item.createdDate)
    $scope.data = result.data
  , (err) ->

  $scope.submit = ->
    model = $scope.post
    model._user = Auth.user._id

    Post.create(model).$promise.then (r) ->
      $scope.post = ''
      $scope.data.splice 0, 0, r.data
    , (err) ->
      alert 'Server error, try again later!'
      return
