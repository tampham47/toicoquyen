'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

TaggedSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  TagId:
    type: Schema.Types.ObjectId
    ref: 'Tags'
    require: true

  PostId:
    type: Schema.Types.ObjectId
    ref: 'Posts'
    require: true

  CreatedDate:
    type: Date
    default: new Date

module.exports = mongooes.model 'Tagged', TaggedSchema
