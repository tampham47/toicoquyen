'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

PostsSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  UserId:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  Title:
    type: String
    # require: true

  Content:
    type: String
    # require: true

  Price:
    type: Number

  Discount:
    Price:
      type: Number
    StartDate:
      type: Date
      default: new Date
    EndDate:
      type: Date
      default: new Date

  CategoryId:
    type: Schema.Types.ObjectId
    ref: 'Categories'
    require: true

  Type:
    type: String

  CreatedDate:
    type: Date
    default: new Date

  ExpectedDelivery:
    type: Number

  AverageDelivery:
    type: Number

  ResponseTime:
    type: Number

  OrdersInProgress:
    type: Number

  NumRecommendations:
    type: Number

  NumNegatives:
    type: Number

  NumPositives:
    type: Number

module.exports = mongooes.model 'Posts', PostsSchema
