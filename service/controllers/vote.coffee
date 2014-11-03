'use strict'

Vote = require '../business/vote'
Moment = require 'moment'

create = (req, res) ->
  model = req.body
  console.log 'create', model

  Vote.create(model).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

update = (req, res) ->
  d = req.data
  Vote.update(d._id, d).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

deleteById = (req, res) ->
  console.log req
  id = req.body.id
  Vote.deleteById(id).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

getById = (req, res) ->
  id = req.query.id
  vote.getById(id).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

getAll = (req, res) ->
  console.log 'getAll'
  Vote.getAll().then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

module.exports = (app) ->
  app.post '/vote/create', create
  app.post '/vote/update', update
  app.post '/vote/deleteById', deleteById
  app.get '/vote/getById', getById
  app.get '/vote/getAll', getAll
