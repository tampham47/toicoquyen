'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

AlertsSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  UserId:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  Content:
    type: String

  Status:
    type: Boolean

  CreatedDate:
    type: Date
    default: new Date

module.exports = mongooes.model 'Alerts', AlertsSchema
