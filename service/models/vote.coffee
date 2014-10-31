'use strict'

mongoose = require 'mongoose'
Schema = mongoose.Schema

VoteSchame = new Schema

  Signer:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  Target:
    type: Schema.Types.ObjectId
    ref: 'Post'
    require: true

  Comment:
    type: String

  Confirmation:
    Status:
      type: Boolean
      default: false
    ConfirmedDate:
      type: Date
    IsPublishUserInfo:
      type: Boolean
      default: true

  CreatedDate:
    type: Date
    default: new Date

module.exports = mongoose.model 'Vote', VoteSchame
