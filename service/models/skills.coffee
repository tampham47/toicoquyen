'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

SkillsSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  Name:
    type: String

module.exports = mongooes.model 'Skills', SkillsSchema
