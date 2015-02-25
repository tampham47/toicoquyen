'use strict'

PostModel = require '../models/posts'

create = (data) ->
  # create function always return a promise
  PostModel.create(data).then (data) ->
    PostModel.findOne({_id: data.id}).populate('_user').exec()

update = (id, data) ->
  PostModel.findByIdAndUpdate(id, data).exec()

deleteById = (id) ->
  PostModel.remove({_id: id}).exec()

getById = (id) ->
  PostModel.findOne({_id: id}).populate('_user').exec()

getAll = ->
  PostModel.find({}).sort({createdDate: -1}).populate('_user').exec()

module.exports = {
  create, update, deleteById, getById, getAll
}
