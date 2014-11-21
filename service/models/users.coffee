'use strict'

mongoose = require 'mongoose'
passportLocal = require 'passport-local-mongoose'
Schema = mongoose.Schema

UserSchema = new Schema
  # Mongoose auto create a primary key for you, _id
  # I will customize this name latter

  fullName:
    type: String
    require: true

  email:
    type: String
    unique: true

  avatarPath:
    type: String

  provider:
    type: String

  facebook:
    type: Schema.Types.Mixed

  createdDate:
    type: Date
    default: new Date

UserSchema.virtual('UserId').get ->
  return @_id
UserSchema.set 'toJSON',
  virtuals: true

UserSchema.plugin passportLocal

module.exports = mongoose.model 'User', UserSchema
