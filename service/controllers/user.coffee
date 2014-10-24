'use strict'

User = require '../business/user'
Moment = require 'moment'

create = (req, res) ->
  # data = req.body
  console.log 'controller/create'
  model =
    FullName: 'Tan Nguyen'
    Email: 'Tan Nguyen' + Moment().unix() + '@live.com'
    PaypalAccount: 'Tan Nguyen' + Moment().unix() + '@live.com'
    PayzaAccount: 'Tan Nguyen' + Moment().unix() + '@live.com'
    Bio: 'Tan Nguyen'
    InvoiceTo: 'Tan Nguyen'
    SocialProfiles: 'Tan Nguyen'
    PrivacySettings: 'Tan Nguyen'
    Level: 'Tan Nguyen'
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

deleteById = (req, res) ->
  console.log req
  id = req.query.id
  User.deleteById(id).then (data) ->
    res.send 'ok'
  , (err) ->
    res.send err

module.exports = (app) ->
  app.get '/user/create', create
  app.get '/user/getAll', getAll
  app.get '/user/deleteById', deleteById

