'use strict'

angular.module('site')
.directive 'ngMeditor', ->
  restrict: 'A'
  require: 'ngModel'
  link: (scope, element, attrs, ngModelCtrl) ->
    $ ->
      new MediumEditor($(element))
      $(element).on 'input', ->
        ngModelCtrl.$setViewValue $(this).html()
