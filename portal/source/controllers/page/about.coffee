'use strict'

angular.module('site.page')
.config ($routeProvider) ->
  $routeProvider.when '/about',
    controller: 'about-ctrl'
    templateUrl: 'views/page/about.jade'

.controller 'about-ctrl', ($scope, $location, Page, Product) ->
  $scope.page = Page
  console.log Product.getAll()
