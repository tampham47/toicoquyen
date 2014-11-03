'use strict'

UserModel = require '../models/users'

create = (data) ->
  # create function always return a promise
  # UserModel.find({_id: data.UserId, xxx: data.PostId})
  UserModel.create(data)

update = (id, data) ->
  UserModel.findByIdAndUpdate(id, data).exec()

deleteById = (id) ->
  UserModel.remove({_id: id}).exec()

getById = (id) ->
  UserModel.getById(id).exec()

getAll = ->
  UserModel.find({}).exec()

# generateHash = (id, password) ->
#   UserModel.findOne(id).exec()

# validPassword = (id, password) ->
#   UserModel.findOne(id).exec()

module.exports = {
  create, update, getById, getAll, deleteById
}
