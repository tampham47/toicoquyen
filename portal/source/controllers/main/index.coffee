'use strict'

angular.module('site.main', [])
.config ($routeProvider) ->
  $routeProvider.otherwise {redirectTo: '/'}

.controller 'MainCtrl', ($scope, $location, Auth) ->
  console.log 'MainCtrl'
  $scope.isAuth = false

  console.log 'Auth.user', Auth.user
  Auth.getUser().then (data) ->
    console.log 'user', data
    $scope.isAuth = true
    $scope.userProfile = data
  , (err) ->
    $scope.isAuth = false
