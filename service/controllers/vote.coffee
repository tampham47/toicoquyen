'use strict'

Vote = require '../business/vote'
Moment = require 'moment'

create = (req, res) ->
  model =
    UserId: '544e56f73a5a1284026d04db'
    NumOfVote: 1

  Vote.create(model).then (data) ->
    res.send data
  , (err) ->
    res.send err

update = (req, res) ->
  d = req.data
  Vote.update(d._id, d).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

deleteById = (req, res) ->
  console.log req
  id = req.query.id
  Vote.deleteById(id).then (data) ->
    res.send 'Ok'
  , (err) ->
    res.send err

getById = (req, res) ->
  _vote = req.query._vote
  vote.getById(_vote).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

getAll = (req, res) ->
  console.log 'getAll'
  Vote.getAll().then (data) ->
    res.send data
  , (err) ->
    res.send err

module.exports = (app) ->
  app.get '/vote/create', create
  app.get '/vote/update', update
  app.get '/vote/deleteById', deleteById
  app.get '/vote/getById', getById
  app.get '/vote/getAll', getAll
