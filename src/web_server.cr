require "./uk_national_lottery"
require "http/server"

server = HTTP::Server.new do |ctx|
  lotto = UkNationalLottery::UkNationalLottery.new
  ctx.response.content_type = "text/plain"
  ctx.response.print lotto.lucky_dip
end

server.bind_tcp "0.0.0.0", 3000
server.listen
