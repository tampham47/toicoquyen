'use strict'

app.filter 'moment', ->
  (value, format) ->
    m = moment(value)
    return m.format(format)
