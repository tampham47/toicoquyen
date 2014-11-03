'use strict'

User = require '../business/user'
Moment = require 'moment'

create = (req, res) ->
  model = req.body
  console.log 'create', model

  User.create(model).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

update = (req, res) ->
  data = req.body
  User.Update(data.id, data).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

deleteById = (req, res) ->
  console.log req
  id = req.body.id
  User.deleteById(id).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

getById = (req, res) ->
  userId = req.query.userId
  user.getById(userId).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

getAll = (req, res) ->
  console.log 'getAll'
  User.getAll().then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

module.exports = (app) ->
  app.post '/user/create', create
  app.post '/user/update', update
  app.post '/user/deleteById', deleteById
  app.get '/user/getById', getById
  app.get '/user/getAll', getAll
