'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

CategoriesSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  ParentId:
    type: Schema.Types.ObjectId
    ref: 'Categories'
    require: true

  Name:
    type: String

module.exports = mongooes.model 'Categories', CategoriesSchema
