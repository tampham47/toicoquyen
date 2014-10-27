'use strict'

VoteModel = require '../models/vote'

create = (data) ->
  VoteModel.create(data)

update = (id, data) ->
  VoteModel.findByIdAndUpdate(id, data).exec()

deleteById = (id) ->
  VoteModel.remove({_id: id}).exec()

getById = (id) ->
  VoteModel.getById(id).exec()

getAll = (id) ->
  VoteModel.find({}).exec()

module.exports = {
  create, update, deleteById, getById, getAll
}
