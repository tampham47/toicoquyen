'use strict'

mongoose = require 'mongoose'
Schema = mongoose.Schema

VoteSchame = new Schema

  _user:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  _post:
    type: Schema.Types.ObjectId
    ref: 'Post'
    require: true

  comment:
    type: String

  confirmation:
    status:
      type: Boolean
      default: false
    confirmedDate:
      type: Date
    isPublishUserInfo:
      type: Boolean
      default: true

  createdDate:
    type: Date
    default: new Date

module.exports = mongoose.model 'Vote', VoteSchame
