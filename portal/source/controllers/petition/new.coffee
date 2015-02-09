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
    model = $scope.post
    model._user = Auth.user._id
    Post.create(model).$promise.then (r) ->
      $location.path '/petition/detail/' + r.data.id
    , (err) ->
      return
