'use strict'

UserModel = require '../models/users'

create = (data) ->
  # create function always return a promise
  UserModel.create(data)

update = (_id, data) ->
  UserModel.findByIdAndUpdate(_id, data).exec()

# 24/10/2014
remove = (_id, data) ->
  UserModel.findByIdAndRemove(_id, data).exec()

getById = (_id) ->
  UserModel.getById(id).exec()

getAll = ->
  UserModel.find({}).exec()


module.exports = {
  create, update, remove, getById, getAll
}
