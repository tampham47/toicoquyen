'use strict'

mongooes = require 'mongoose'
passportLocal = require 'passport-local-mongoose'

Schema = mongooes.Schema

userSchema = new Schema
  # Mongoose auto create a primary key for you, _id
  # I will customize this name latter

  FullName:
    type: String
    require: true

  Email:
    type: String
    unique: true

  SocialProfiles:
    type: String

  PrivacySettings:
    type: String

  JoinedDate:
    type: Date
    default: new Date

  Level:
    type: String

userSchema.virtual('UserId').get ->
  return @_id

userSchema.set 'toJSON',
  virtuals: true

userSchema.plugin passportLocal

module.exports = mongooes.model 'User', userSchema
