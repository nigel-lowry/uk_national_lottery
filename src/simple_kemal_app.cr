require "./uk_national_lottery"
require "kemal"

get "/" do
  UkNationalLottery::UkNationalLottery.new.lucky_dip.to_s
end

Kemal.run
