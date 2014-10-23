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

  PaypalAccount:
    type: String
    unique: true

  PayzaAccount:
    type: String
    unique: true

  Bio:
    type: String

  InvoiceTo:
    type: String

  SocialProfiles:
    type: String

  PrivacySettings:
    type: String

  Locations:
    Latitude:
      type: Number
    Longitude:
      type: Number

  JoinedDate:
    type: Date
    default: new Date

  Level:
    type: String

  LastLoggedIn:
    type: Date

  Balance:
    type: Number

  CreatedDate:
    type: Date
    default: new Date

userSchema.virtual('UserId').get ->
  return @_id

userSchema.set 'toJSON',
  virtuals: true

userSchema.plugin passportLocal

module.exports = mongooes.model 'User', userSchema
