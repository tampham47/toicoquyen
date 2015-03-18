'use strict'

Post = require '../business/post'
Moment = require 'moment'
Facebook = require 'facebook-api'

create = (req, res) ->
  model = req.body
  fb = new Facebook.user(req.user.facebook.accessToken)

  console.log 'create'
  Post.create(model).then (data)->
    fb.me.feed.write data.message, (data) ->
      console.log('POST DONE', data)
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
