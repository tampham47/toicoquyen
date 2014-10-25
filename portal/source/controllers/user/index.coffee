'use strict'

angular.module('site.user', [])
.config ($routeProvider) ->
  $routeProvider.when '/user',
    controller: 'UserCtrl'
    templateUrl: 'views/user/index.jade'

.controller 'UserCtrl', ($scope, $location, User) ->
  console.log 'UserCtrl'
  $scope.page = 'User Page'

  $scope.create = ->
    model =
      FullName: 'Tam Pham'
      # Email: 'tampham' + Moment().unix() + '@live.com'
      # PaypalAccount: 'tampham' + Moment().unix() + '@live.com'
      # PayzaAccount: 'tampham' + Moment().unix() + '@live.com'
      Bio: 'Tam Pham'
      InvoiceTo: 'Tam Pham'
      SocialProfiles: 'Tam Pham'
      PrivacySettings: 'Tam Pham'
      Level: 'Tam Pham'
      Balance: 0
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
