'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

ReviewsSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  PostId:
    type: Schema.Types.ObjectId
    ref: 'Posts'
    require: true

  UserId:
    type: Schema.Types.ObjectId
   ref: 'User'
    require: true

  Content:
    type: String
    # require: true

  Rating:
    type: Number

module.exports = mongooes.model 'Reviews', ReviewsSchema
