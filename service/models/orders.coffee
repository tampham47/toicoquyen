'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

OrdersSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  SellerId:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  BuyerId:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  PostId:
    type: Schema.Types.ObjectId
    ref: 'Posts'
    require: true

  ExtrasList:
    type: String

  Status:
    type: String

  CreatedDate:
    type: Date
    default: new Date

module.exports = mongooes.model 'Orders', OrdersSchema
