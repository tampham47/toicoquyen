'use strict'

fs = require 'fs'
path = require('path')

express  = require 'express'
passport = require 'passport'
mongoose = require 'mongoose'

fbStrategy = require('passport-facebook').Strategy

# configure express
app = express()
app.use express.json()
app.use express.urlencoded()
app.use express.cookieParser()
app.use express.session(secret: 'madoka')
app.use passport.initialize()
app.use passport.session()

app.set 'view engine', 'html'
app.set 'views', path.join(__dirname, '/portal/public')
app.use express.static(path.join(__dirname, '/portal/public'))

require('./service/controllers')(app)

# configure passport
User = mongoose.model 'User'
passport.use User.createStrategy()
passport.serializeUser User.serializeUser()
passport.deserializeUser User.deserializeUser()

passport.use new fbStrategy
  clientID: '209715572476105'
  clientSecret: '73e757383b7e118104a603611d8f5be3'
  callbackURL: 'http://localhost:3000/auth/facebook/callback'
, (accessToken, refreshToken, profile, done) ->
  console.log 'done', profile
  # insert new user into database
  #check user table for anyone with a facebook ID of profile.id
  User.findOne
    'facebook.id': profile.id
  , (err, user) ->
    return done(err) if err
    #No user was found... so create a new user with values from Facebook (all the profile. stuff)
    unless user
      fbData = profile._json
      fbData.accessToken = accessToken
      fbData.refreshToken = refreshToken
      user = new User
        fullName: profile.displayName
        email: profile.emails[0].value
        username: profile.username
        provider: 'facebook'
        #now in the future searching on User.findOne({'facebook.id': profile.id } will match because of this next line
        facebook: fbData
      user.save (err) ->
        console.log err if err
        done err, user
    else
      #found user. Return
      done err, user
    return
  return

mongoose.connect 'mongodb://localhost/toicoquyen'

app.listen 3000
console.log 'Listening on port 3000...'
