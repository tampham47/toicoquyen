'use strict'
app = angular.module 'site', [
  'ngAnimate'
  'ngRoute'
  'ngResource'
  'ngSanitize'
  'facebook'

  'site.templates'
  'site.home'
  'site.petition'
  'site.user'
  'site.test'
]

app.config (FacebookProvider) ->
  FacebookProvider.init '340855902630776'
  return
