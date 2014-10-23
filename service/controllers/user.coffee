'use strict'

User = require '../business/user'
Moment = require 'moment'

create = (req, res) ->
  # data = req.body
  console.log 'controller/create'
  model =
    FullName: 'Tam Pham'
    Email: 'tampham' + Moment().unix() + '@live.com'
    PaypalAccount: 'tampham' + Moment().unix() + '@live.com'
    PayzaAccount: 'tampham' + Moment().unix() + '@live.com'
    Bio: 'Tam Pham'
    InvoiceTo: 'Tam Pham'
    SocialProfiles: 'Tam Pham'
    PrivacySettings: 'Tam Pham'
    Level: 'Tam Pham'
    Balance: 0
  console.log 'model', model

  User.create(model).then (data) ->
    res.send data
  , (err) ->
    res.send err

getAll = (req, res) ->
  User.getAll().then (data) ->
    res.send data
  , (err) ->
    res.send err

module.exports = (app) ->
  app.get '/user/create', create
  app.get '/user/getAll', getAll
