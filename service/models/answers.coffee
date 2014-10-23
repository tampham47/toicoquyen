'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

AnswersSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  UserId:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  FaqId:
    type: Schema.Types.ObjectId
    ref: 'FAQs'
    require: true

  Content:
    type: String

  CreatedDate:
    type: Date
    default: new Date

  isSolved:
    type: Boolean

module.exports = mongooes.model 'Answers', AnswersSchema
