'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

TagsSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  Name:
    type: String
    # require: true

  CreatedDate:
    type: Date
    default: new Date

module.exports = mongooes.model 'Tags', TagsSchema
