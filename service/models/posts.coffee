'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

PostsSchema = new Schema
  # Mongoose auto create a primary key for you, _id

  Creator:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  # person/organize whom you want to send petition
  To:
    type: String
    require: true

  # what user want to
  Petition:
    type: String
    require: true

  # why it important to you
  Reason:
    type: String
    require: true

  Link:
    type: String

  MixContent:
    type: Schema.Types.Mixed

  # the expected of signs
  ExpectedSign:
    type: Number
    default: 0

  # total sign
  TotalSign:
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
