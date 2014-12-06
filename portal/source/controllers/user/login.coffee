'use strict'

angular.module('site.user')
.config ($routeProvider) ->
  $routeProvider.when '/login',
    controller: 'LoginCtrl'
    templateUrl: 'views/user/login.jade'

.controller 'LoginCtrl', ($scope, $location) ->
  console.log 'LoginCtrl'

  # $scope.getLoginStatus = ->
  #   Facebook.getLoginStatus (response) ->
  #     if response.status is 'connected'
  #       $scope.loggedIn = true
  #     else
  #       $scope.loggedIn = false
  #     return
  #   return

  # $scope.fbLogin = ->
  #   Facebook.login (response) ->
  #     console.log 'response', response
  #     return
  #   return

  # $scope.getData = ->
  #   Facebook.api '/me', (response) ->
  #     console.log 'userData', response

