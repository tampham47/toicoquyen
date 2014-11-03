'use strict'

mongooes          = require 'mongoose'
#passportLocal = require 'passport-local-mongoose'
passportLocal     = require 'passport-local'
passportFacebook  = require 'passport-facebook'
bcrypt            = require 'bcrypt-nodejs'

Schema            = mongooes.Schema

<<<<<<< HEAD
userSchema        = new Schema
=======
UserSchema = new Schema
>>>>>>> 69048c0b06e1fc34a48985c9672e573307bd54f0
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

<<<<<<< HEAD
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

userSchema.virtual('UserId').get ->
=======
UserSchema.virtual('UserId').get ->
>>>>>>> 69048c0b06e1fc34a48985c9672e573307bd54f0
  return @_id

UserSchema.set 'toJSON',
  virtuals: true

UserSchema.plugin passportLocal

<<<<<<< HEAD
userSchema.methods passportLocal # Thêm để viết 2 phương thức mã hóa password cho người dùng đăng nhập local

module.exports = mongooes.model 'User', userSchema
=======
module.exports = mongooes.model 'User', UserSchema
>>>>>>> 69048c0b06e1fc34a48985c9672e573307bd54f0
