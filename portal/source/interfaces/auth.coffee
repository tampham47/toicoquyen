'use strict'

angular.module('site')
.factory 'Auth', ($http, $q, $window, CONSTANTS) ->
  deferred = $q.defer()

  # return
  user: deferred.promise
  getUser: ->
    $http.get(CONSTANTS.ApiPath + '/auth/getUser').then (response) ->
      deferred.resolve response.data
    return deferred.promise
