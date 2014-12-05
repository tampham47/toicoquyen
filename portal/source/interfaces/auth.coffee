'use strict'

angular.module('site')
.factory 'Auth', ($http, $q, $window, CONSTANTS) ->
  deferred = $q.defer()

  auth =
    isAuth: false
    user: null
    getUser: ->
      $http.get(CONSTANTS.ApiPath + '/auth/getUser').then (response) ->
        deferred.resolve response.data
      return deferred.promise

  auth.getUser().then (data) ->
    auth.isAuth = true
    auth.user = data

  return auth
