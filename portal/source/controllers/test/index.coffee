'use strict'

angular.module('site.test', [])
.config ($routeProvider) ->
  $routeProvider.when '/test',
    controller: 'TestCtrl'
    templateUrl: 'views/test/index.jade'

.controller 'TestCtrl', ($scope, $location, $http) ->
  console.log 'TestCtrl'

  $scope.submit = ->
    console.log $scope.data, $scope.method, $scope.url
    data = JSON.stringify(eval("("+$scope.data+")"))
    url = 'http://localhost:3000' + $scope.url
    if ($scope.method is 'post')
      $http.post(url, data).success (data, status, headers, config) ->
        console.log 'done', data
      .error (data, status, headers, config) ->
        console.log 'err', data
    else
      $http.get(url, data).success (data, status, headers, config) ->
        console.log 'done', data
      .error (data, status, headers, config) ->
        console.log 'err', data
