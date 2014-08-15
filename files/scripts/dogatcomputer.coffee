# Description:
#   Displays a "I Have No Idea What I'm Doing" image
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot no idea
#
# Notes:
#   No idea...
#
# Author:
#   Brian Shumate <brian@couchbase.com>

noidea = "http://i.imgur.com/hmTeehN.jpg"

module.exports = (robot) ->
  robot.hear /(dunno|I don\'t know|beats me|no idea)/i, (msg)->
    r = Math.random()
    if r <= 0.10
      msg.send noidea

  robot.respond /dunno|I don\'t know|beats me|no idea/i, (msg) ->
    msg.send noidea
