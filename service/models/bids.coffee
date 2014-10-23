'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

BidsSchema = new Schema
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

  Price:
    type: Number

  CreatedDate:
    type: Date
    default: new Date

module.exports = mongooes.model 'Bids', BidsSchema
