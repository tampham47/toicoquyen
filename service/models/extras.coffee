'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

ExtrasSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  PostId:
    type: Schema.Types.ObjectId
    ref: 'Posts'
    require: true

  Content:
    type: String

  Price:
    type: Number

module.exports = mongooes.model 'Extras', ExtrasSchema
