'use strict'

mongoose = require 'mongoose'
Schema = mongoose.Schema

VoteSchame = new Schema

  UserId:
    type: Schema.Types.ObjectId
    ref: 'User'
    require: true

  # Số lượng bình chọn
  NumOfVote:
    type: Number
    default: 0

  VotedDate:
    type: Date
    default: new Date

module.exports = mongoose.model 'Vote', VoteSchame
