'use strict'

UserModel = require '../models/users'

create = (data) ->
  # create function always return a promise
  UserModel.create(data)

update = (id, data) ->
  UserModel.findByIdAndUpdate(id, data).exec()

getById = (id) ->
  UserModel.getById(id).exec()

getAll = ->
  UserModel.find({}).exec()

deleteById = (id) ->
  UserModel.remove({_id: id}).exec()


module.exports = {
  create, update, getById, getAll, deleteById
}
