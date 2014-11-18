# Default modules
express = require('express')
path = require('path')
passport = require 'passport'
mongoose = require 'mongoose'
facebookStrategy = require('passport-facebook').Strategy
app = express()
ckStaticsPath = require('node-ckeditor')

# Default configuration
app.set 'port', process.env.PORT or 3010
app.set 'views', path.join(__dirname, '/views')
app.set 'view engine', 'jade'
# app.use express.favicon(path.join(__dirname, '../public/favicon.ico'))
app.use express.logger('dev')
app.use express.urlencoded()
app.use express.json()
app.use express.methodOverride()
app.use express.cookieParser('frontend')
app.use app.router
app.use express.static(path.join(__dirname, '../public'))
app.use express.static('ckStaticsPath')
app.locals.pretty = false

# configure passport
User = mongoose.model 'User', new mongoose.Schema({})
# passport.use User.createStrategy()
# passport.serializeUser User.serializeUser()
# passport.deserializeUser User.deserializeUser()

passport.use new facebookStrategy
  clientID: 'FACEBOOK_APP_ID'
  clientSecret: 'FACEBOOK_APP_SECRET'
  callbackURL: 'http://localhost:3010/auth/facebook/callback'
, (accessToken, refreshToken, profile, done) ->
  console.log 'accessToken', accessToken

mongoose.connect 'mongodb://localhost/vnpetitions'

# # Development configuration
# if 'development' is app.get('env')
#   app.use express.errorHandler
#     dumpExceptions: true
#     showStack: true
#   app.locals.pretty = true

# Routes
app.get '/', (req, res) ->
  res.render 'index'

# Initialization
app.listen app.get('port'), ->
  console.log 'Template is running on port ' + app.get('port')
  return
