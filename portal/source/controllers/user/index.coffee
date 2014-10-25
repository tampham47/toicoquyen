'use strict'

angular.module('site.user', [])
.config ($routeProvider) ->
  $routeProvider.when '/user',
    controller: 'UserCtrl'
    templateUrl: 'views/user/index.jade'

.controller 'UserCtrl', ($scope, $location, User) ->
  console.log 'UserCtrl'
  $scope.page = 'User Page'

  generateUUID = ->
    d = new Date().getTime()
    # uuid = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, (c) ->
    uuid = 'xxxx'.replace(/[xy]/g, (c) ->
      r = (d + Math.random() * 16) % 16 | 0
      d = Math.floor(d / 16)
      ((if c is 'x' then r else (r & 0x7 | 0x8))).toString 16
    )
    uuid

  $scope.create = ->
    model =
      FullName: 'Tam Pham ' + generateUUID()
      Email: 'tampham' + generateUUID() + '@live.com'

    User.create(model).$promise.then (data) ->
      console.log 'create'
      console.log data
    , (err) ->
      console.log err
    return

  $scope.getAll = ->
    User.getAll().$promise.then (data) ->
      console.log 'getAll'
      console.log data
    , (err) ->
      console.log err
    return

  return
