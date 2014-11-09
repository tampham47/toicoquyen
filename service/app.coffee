'use strict'

express  = require 'express'
passport = require 'passport'
mongoose = require 'mongoose'
fs = require 'fs'
facebookStrategy = require('passport-facebook').Strategy


# configure express
app = express()
app.use express.json()
app.use express.urlencoded()
app.use express.cookieParser()
app.use express.session(secret: 'madoka')
app.use passport.initialize()
app.use passport.session()

require('./controllers')(app)

# configure passport
User = mongoose.model 'User'
passport.use User.createStrategy()
passport.serializeUser User.serializeUser()
passport.deserializeUser User.deserializeUser()

passport.use new facebookStrategy
  clientID: 'FACEBOOK_APP_ID'
  clientSecret: 'FACEBOOK_APP_SECRET'
  callbackURL: 'http://localhost:3010/auth/facebook/callback'
, (accessToken, refreshToken, profile, done) ->
  console.log 'accessToken', accessToken


mongoose.connect 'mongodb://localhost/vnpetitions'

app.listen 3000
console.log 'Listening on port 3000...'
