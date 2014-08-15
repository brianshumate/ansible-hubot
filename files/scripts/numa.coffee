# Description:
#   Link to fun instructional video on non-uniform memory access
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot numa
#
# Notes:
#   Nu mă, nu mă iei, nu mă, nu mă, nu mă iei.
#
# Author:
#   Brian Shumate <brian@couchbase.com>

numaiei = 'https://www.youtube.com/watch?v=60og9gwKh1o'

module.exports = (robot) ->
  robot.hear /.*(numa).*/i, (msg) ->
    r = Math.random()
    if r <= 0.10
      msg.send numaiei

  robot.respond /numa/i, (msg) ->
    msg.send numaiei

