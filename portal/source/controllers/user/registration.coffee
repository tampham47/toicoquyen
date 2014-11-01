'use strict'

angular.module('site.user')
.config ($routeProvider) ->
  $routeProvider.when '/registration',
    controller: 'RegistrationCtrl'
    templateUrl: 'views/user/registration.jade'

.controller 'RegistrationCtrl', ($scope, $location) ->
  console.log 'RegistrationCtrl'
