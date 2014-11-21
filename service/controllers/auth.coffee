'use strict'
passport = require 'passport'

main = (req, res) ->
  console.log 'main'
  res.send 'ok'

login = (req, res) ->
  res.send 'login'

# Redirect the user to Facebook for authentication. When complete,
# Facebook will redirect the user back to the application at
auth = passport.authenticate('facebook', {scope: 'email'})

# Facebook will redirect the user to this URL after approval.  Finish the
# authentication process by attempting to obtain an access token.  If
# access was granted, the user will be logged in. Otherwise,
# authentication has failed.
callback = passport.authenticate 'facebook',
  successRedirect: '/'
  failureRedirect: '/login'

module.exports = (app) ->
  app.get '/', main
  app.get '/login', login

  app.get '/auth/facebook', auth
  app.get '/auth/facebook/callback', callback
