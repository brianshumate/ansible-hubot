# Description:
#   Returns URL to first Google hit on docs site for the query
# 
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot doc me <query> - Googles <query> against docs.couchbase.com
#
# Author:
#   Brian Shumate <brian@couchbase.com>

module.exports = (robot) ->
  robot.respond /(doc)( me)? (.*)/i, (msg) ->
    googleMe msg, msg.match[3], (url) ->
      msg.send url

googleMe = (msg, query, cb) ->
  site = 'site:+docs.couchbase.com+'
  msg.http('http://www.google.com/search')
    .query(q: site + query)
    .get() (err, res, body) ->
      cb body.match(/class="r"><a href="\/url\?q=([^"]*)(&amp;sa.*)">/)?[1] || "Sorry, no results for '#{query}'"
