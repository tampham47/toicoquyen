'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

MessagesSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  From:
    type: String
    # require: true

  To:
    type: String

  Content:
    type: String

  CreatedDate:
    type: Date
    default: new Date

  Status:
    type: String

module.exports = mongooes.model 'Messages', MessagesSchema
