'use strict'

angular.module('site.home', [])
.config ($routeProvider) ->
  $routeProvider.when '/',
    controller: 'HomeCtrl'
    templateUrl: 'views/home/index.jade'

.controller 'HomeCtrl', ($scope, $location) ->
  console.log 'HomeCtrl'
  $scope.page = 'Home Page'
