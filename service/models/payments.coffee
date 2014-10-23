'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

PaymentsSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  From:
    type: String

  To:
    type: String

  Amount:
    type: Number

  Description:
    type: String

  CreatedDate:
    type: Date
    default: new Date

module.exports = mongooes.model 'Payments', PaymentsSchema
