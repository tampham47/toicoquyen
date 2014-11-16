'use strict'

Post = require '../business/post'
Moment = require 'moment'

create = (req, res) ->
  model = req.body
  console.log model

  Post.create(model).then (data)->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

update = (req, res) ->
  d = req.body
  Post.Update(d.PostId, d).than (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

deleteById = (req, res) ->
  console.log req
  id = req.body.id
  Post.deleteById(id).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

getById = (req, res) ->
  postId = req.query.id
  Post.getById(postId).then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

getAll = (req, res) ->
  Post.getAll().then (data) ->
    res.send {data: data}
  , (err) ->
    res.send {err: err}

module.exports = (app) ->
  app.post '/post/create', create
  app.post '/post/update', update
  app.post '/post/deleteById', deleteById
  app.get '/post/getById', getById
  app.get '/post/getAll', getAll
