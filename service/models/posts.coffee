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
  TargetUser:
    type: String
    require: true

  # what user want to
  Content:
    type: String
    require: true

  # why it important to you
  Reason:
    type: String
    require: true

  # TEST
  Textbox:
    type: String
    require: true

  Link:
    type: String

  MixContent:
    type: Schema.Types.Mixed

  # amount of vote
  ExpectedSign:
    type: Number
    default: 0

  # amount of vote
  AmountOfVote:
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
