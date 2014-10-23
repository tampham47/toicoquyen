'use strict'

angular.module('site.page', [])
.config ($routeProvider) ->
  $routeProvider.when '/',
    controller: 'page-ctrl'
    templateUrl: 'views/page/index.jade'

.controller 'page-ctrl', ($scope, $location, Page) ->
  $scope.page = Page

  $("#myTab a").click (e) ->
    e.preventDefault()
    $(this).tab "show"
    return
  $(".collapse").collapse()