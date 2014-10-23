'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

UserSkillSchema = new Schema
  # Mongoose auto create a primary key for you
  # _id

  UserId:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  SkillId:
    type: Schema.Types.ObjectId
    ref: 'Skills'
    require: true

module.exports = mongooes.model 'UserSkill', UserSkillSchema
