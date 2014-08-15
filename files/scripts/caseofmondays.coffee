# Description:
#   Looks like someone has a case of the Mondays
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot case of the mondays
#
# Notes:
#   "No. No, man. Shit no, man. I believe you'd get your ass kicked sayin'
#   something like that, man."
#
# Author:
#   Brian Shumate <brian@couchbase.com>

mondays = [
  "http://i.imgur.com/8n4hlQE.jpg"
]

module.exports = (robot) ->
  robot.hear /case of the mondays/i, (msg)->
    msg.send msg.random mondays

