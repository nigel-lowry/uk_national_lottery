require "./uk_national_lottery"
require "kemal"

get "/" do
  lucky_dip = UkNationalLottery::UkNationalLottery.new.lucky_dip.to_s
  render "src/views/home.ecr", "src/views/layouts/layout.ecr"
end

Kemal.run
