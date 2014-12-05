'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

PostsSchema = new Schema
  # Mongoose auto create a primary key for you, _id

  _user:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  # person/organize whom you want to send petition
  to:
    type: String
    require: true

  # what user want to
  petition:
    type: String
    require: true

  # why it important to you
  reason:
    type: String
    require: true

  # TEST
  textbox:
    type: String
    require: true

  link:
    type: String

  mixContent:
    type: Schema.Types.Mixed

  # the expected of signs
  expectedSign:
    type: Number
    default: 0

  # total sign
  totalSign:
    type: Number
    default: 0

  createdDate:
    type: Date
    default: new Date

PostsSchema.virtual('postId').get ->
  return @_id
PostsSchema.set 'toJSON',
  virtuals: true

module.exports = mongooes.model 'Post', PostsSchema
