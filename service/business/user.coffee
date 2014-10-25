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

deleteById = (id) ->
  UserModel.remove({_id: id}).exec()


module.exports = {
<<<<<<< HEAD
  create, update, remove, getById, getAll
=======
  create, update, getById, getAll, deleteById
>>>>>>> 084167d35349f5307f0e3ec6beef8330b33d427a
}
