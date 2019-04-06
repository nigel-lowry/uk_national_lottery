require "http/server"

server = HTTP::Server.new do |ctx|
  ctx.response.content_type = "text/plain"
  ctx.response.print "hello"
end

server.bind_tcp "0.0.0.0", 8080
server.listen
puts "listening..."