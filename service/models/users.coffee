'use strict'

mongoose = require 'mongoose'
passportLocal = require 'passport-local-mongoose'
Schema = mongoose.Schema
# passportLocal     = require 'passport-local'
# passportFacebook  = require 'passport-facebook'
# bcrypt            = require 'bcrypt-nodejs'

UserSchema = new Schema
  # Mongoose auto create a primary key for you, _id
  # I will customize this name latter

  FullName:
    type: String
    require: true

  Email:
    type: String
    unique: true

  AvatarPath:
    type: String

  CreatedDate:
    type: Date
    default: new Date

  Level:
    type: String

  Local:
    email: String
    password: String

  Facebook:
    id: String
    token: String
    email: String
    name: String

UserSchema.virtual('UserId').get ->
  return @_id

UserSchema.set 'toJSON',
  virtuals: true

UserSchema.plugin passportLocal

# UserSchema.methods passportLocal # Thêm để viết 2 phương thức mã hóa password cho người dùng đăng nhập local

module.exports = mongoose.model 'User', UserSchema
