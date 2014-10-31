'use strict'

PostModel = require '../models/posts'

create = (data) ->
  # create function always return a promise
  PostModel.create(data)

update = (id, data) ->
  PostModel.findByIdAndUpdate(id, data).exec()

deleteById = (id) ->
  PostModel.remove({_id: id}).exec()

getById = (id) ->
  PostModel.getById(id).exec()

getAll = ->
  PostModel.find({}).populate('Creator').exec()

module.exports = {
  create, update, deleteById, getById, getAll
}
