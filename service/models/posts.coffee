'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

PostsSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  UserId:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  Title:
    type: String
    require: true

  Content:
    type: String
    require: true

  CreatedDate:
    type: Date
    default: new Date

module.exports = mongooes.model 'Posts', PostsSchema
