'use strict'

mongooes = require 'mongoose'
passportLocal = require 'passport-local-mongoose'

Schema = mongooes.Schema

UserSchema = new Schema
  # Mongoose auto create a primary key for you, _id
  # I will customize this name latter

  FullName:
    type: String
    require: true

  Email:
    type: String
    unique: true

  AvatarPath:
    type: String

  CreatedDate:
    type: Date
    default: new Date

UserSchema.virtual('UserId').get ->
  return @_id

UserSchema.set 'toJSON',
  virtuals: true

UserSchema.plugin passportLocal

module.exports = mongooes.model 'User', UserSchema
