'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

LikesSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  ContentId:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  UserId:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  CreatedDate:
    type: Date
    default: new Date

module.exports = mongooes.model 'Likes', LikesSchema
