'use strict'

User = require '../business/user'
Moment = require 'moment'

create = (req, res) ->
  # data = req.body
  model =
    FullName: 'Tan Nguyen'
    Email: 'tannd1993' + Moment().unix() + '@gmail.com'
    Level: Moment().unix()

  #model = req.query
  #console.log 'create'
  #console.log model
  data = req.query
  console.log 'create'
  console.log data

  User.create(model).then (data) ->
    res.send data
  , (err) ->
    res.send err

update = (req, res) ->
  data = req.body
  User.Update(data._id, data).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

deleteById = (req, res) ->
  console.log req
  id = req.query.id
  User.deleteById(id).then (data) ->
    res.send 'ok'
  , (err) ->
    res.send err

##
remove = (req, res) ->
  res.send 'ok'

# Tham khao user - juddy
getById = (req, res) ->
  _user = req.query._user
  user.getById(_user).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

getAll = (req, res) ->
  console.log 'getAll'
  User.getAll().then (data) ->
    res.send data
  , (err) ->
    res.send err

module.exports = (app) ->
  app.get '/user/create', create
  app.get '/user/update', update
  app.get '/user/deleteById', deleteById
  app.get '/user/getById', getById
  app.get '/user/getAll', getAll
