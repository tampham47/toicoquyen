'use strict'

angular.module('site.petition')
.config ($routeProvider) ->
  $routeProvider.when '/petition/new',
    controller: 'PetitionNewCtrl'
    templateUrl: 'views/petition/new.jade'

.controller 'PetitionNewCtrl', ($scope, $location, Post) ->
  console.log 'PetitionNewCtrltest'
  $scope.page = 'Petition Page'

  # single page application
  $scope.submit = ->
    # $scope.post.Petition = CKEDITOR.instances.content.getData
    # $scope.post.Reason = 'reason'
    console.log 'submit', $scope.post
    # $scope.post.Petition = 
    # $scope.post.Reason = CKEDITOR.instances.reason.getData();
    model = $scope.post
    console.log model
    Post.create(model).$promise.then (r) ->
      console.log 'data', r
      $location.path '/petition/detail/' + r.data.id
    , (err) ->
      console.log 'err', err

