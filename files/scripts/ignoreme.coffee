# Description:
#   Displays Venture Bros IGNORE ME! image
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot ignore me
#
# Notes:
#   None
#
# Author:
#   Brian Shumate <brian@couchbase.com>

ignore = [
  "http://3.bp.blogspot.com/-DFLMK7ffcJM/Tbjn752gOFI/AAAAAAAAAsk/qa7D5ZdQDgM/s1600/1301856749331.jpg",
  "http://venturebrosblog.com/wp-content/uploads/2011/02/venture-bros-ignore-me1.jpg",
  "http://memedepot.com/uploads/2000/2159_1272950412470.jpg"
]

module.exports = (robot) ->
  robot.hear /ignore me/i, (msg)->
    msg.send msg.random ignore
