'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

CommentsSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  PostId:
    type: Schema.Types.ObjectId
    ref: 'Posts'
    require: true

  UserId:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  Content:
    type: String

  CreatedDate:
    type: Date
    default: new Date

module.exports = mongooes.model 'Comments', CommentsSchema
