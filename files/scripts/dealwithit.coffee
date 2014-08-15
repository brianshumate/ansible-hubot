# Description:
#   Displays one of those silly "DEAL WITH IT" .GIFs
#
# Commands:
#   hubot deal with it
#

deal = [
  "http://i.imgur.com/452Pe.gif",
  "http://i.imgur.com/Wj3Do.gif",
  "http://i.imgur.com/3PWHn.gif",
  "http://i.imgur.com/To8mu.gif",
  "http://i.imgur.com/kRI0y.gif",
  "http://i.imgur.com/ZTHtv.gif",
  "http://i.imgur.com/dSof9.gif",
  "http://i.imgur.com/GxYr5.gif",
  "http://i.imgur.com/UHww5.gif",
  "http://i.imgur.com/qp0eh.gif",
  "http://i.imgur.com/JnhJU.png"
]

module.exports = (robot) ->
  robot.hear /deal with it/i, (msg)->
    msg.send msg.random deal
