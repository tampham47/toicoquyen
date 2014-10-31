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

  # Số lượng bình chọn
  NumOfVote:
    type: Number
    default: 0

  CreatedDate:
    type: Date
    default: new Date

PostsSchema.virtual('PostId').get ->
  return @_id

PostsSchema.set 'toJSON',
  virtuals: true

module.exports = mongooes.model 'Post', PostsSchema
