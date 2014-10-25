'use strict'

LikeModel = require '../models/likes'

update = (id, data) ->
  LikeModel.findByIdAndUpdate(id, data).exec()

module.exports = {
  update
}
