'use strict'

Post = require '../business/post'
Moment = require 'moment'

create = (req, res) ->
  #data = req.body
  model =
    Title: 'This is title - ' + Moment.unix();
    Content: 'This is content - ' + Moment().unix()

  Post.create(model).then (data) ->
    res.send data
  , (err) ->
    res.send err

update = (req, res) ->
  data = req.body
  User.Update(data._id, data).than (data) ->
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

getById = (req, res) ->
  _user = req.query._user
  user.getById(_user).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

getAll = (req, res) ->
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
