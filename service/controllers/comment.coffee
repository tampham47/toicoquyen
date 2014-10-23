# 'use strict'

# bn_comment = require '../business/comment'
# wordpress = require 'wordpress'

# create = (req, res) ->
#   # data = req.body
#   data =
#     Content: 'this is a test.'
#   bn_comment.create(data).then (data) ->
#     res.send data

# getByPostId = (req, res) ->
#   postId = req.query.postId
#   bn_comment.getByPostId(postId)
#   .then (data) ->
#     res.send data

# getPosts = (req, res) ->
#   settings =
#     url: 'http://tampham47.wordpress.com/xmlrpc.php'
#     username: 'tampham47'
#     password: '1we23rw4t'

#   client = wordpress.createClient(settings)
#   posts = client.getPosts null, null, (err, data) ->
#     console.log data, err
#     res.send 'DONE'


# module.exports = (app) ->
#   app.get '/comment/create', create
#   app.get '/comment/getByPostId', getByPostId
#   app.get '/comment/getPosts', getPosts
