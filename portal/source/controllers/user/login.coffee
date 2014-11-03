'use strict'

angular.module('site.user')
.config ($routeProvider) ->
  $routeProvider.when '/login',
    controller: 'LoginCtrl'
    templateUrl: 'views/user/login.jade'

.controller 'LoginCtrl', ($scope, $location) ->
  console.log 'LoginCtrl'
