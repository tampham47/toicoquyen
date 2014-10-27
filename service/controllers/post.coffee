'use strict'

Post = require '../business/post'
Moment = require 'moment'

create = (req, res) ->
  #data = req.body
  model =
    UserId: '544b4c5d0b741dd41227844d'
    Title: 'This is title - ' + Moment.unix()
    Content: 'This is content - ' + Moment().unix()

  console.log model

  Post.create(model).then (data)->
    res.send data
  , (err) ->
    res.send { err: err }

# update = (req, res) ->
#   d = req.body
#   Post.Update(d._id, d).than (data) ->
#     res.send {data: data}
#   , (err) ->
#     res.send {err: err}

# deleteById = (req, res) ->
#   console.log req
#   id = req.query.id
#   Post.deleteById(id).then (data) ->
#     res.send 'Ok'
#   , (err) ->
#     res.send err

# getById = (req, res) ->
#   _post = req.query._post
#   post.getById(_post).then (data) ->
#     res.send {data: data}
#   , (err) ->
#     res.send {err: err}

# getAll = (req, res) ->
#   Post.getAll().then (data) ->
#     res.send data
#   , (err) ->
#     res.send err

module.exports = (app) ->
  app.get '/post/create', create
  # app.get '/post/update', update
  # app.get '/post/deleteById', deleteById
  # app.get '/post/getById', getById
  # app.get '/post/getAll', getAll
