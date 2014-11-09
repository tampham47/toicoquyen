'use strict'

angular.module('site')
.factory 'Post', ($resource, CONSTANTS) ->
  $resource CONSTANTS.ApiPath + '/post/:cmd/:_id', null,
    create:
      method: 'post'
      isArray: false
      params: cmd: 'create'
    update:
      method: 'post'
      isArray: false
      params: cmd: 'update'
    deleteById:
      method: 'post'
      isArray: false
      params: cmd: 'deleteById'
    getById:
      method: 'get'
      isArray: false
      params: cmd: 'getById'
    getAll:
      method: 'get'
      isArray: false
      params: cmd: 'getAll'
