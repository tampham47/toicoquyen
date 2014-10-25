'use strict'

angular.module('site')
.factory 'User', ($resource, CONSTANTS) ->
  $resource CONSTANTS.ApiPath + '/user/:cmd/:_id', null,
    create:
      method: 'get'
      isArray: false
      params: cmd: 'create'
    getAll:
      method: 'get'
      isArray: true
      params: cmd: 'getAll'
