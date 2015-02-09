'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

PostsSchema = new Schema
  # Mongoose auto create a primary key for you, _id

  _user:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  isAnonymous:
    type: Boolean
    default: false

  # what user want to
  message:
    type: String
    require: true

  content:
    video:
      type: String
    link:
      type: String
    image:
      type: String

  tags: [String]

  # the expected of signs
  expectedVote:
    type: Number
    default: 0

  # total sign
  totalVote:
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
