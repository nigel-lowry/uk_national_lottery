require "./spec_helper"

describe UkNationalLottery do
  it "picks 6 balls" do
    ld = UkNationalLottery::UkNationalLottery.new
    ld.lucky_dip.size.should eq 6
  end

  it "picks 6 unique balls" do
    lottery = UkNationalLottery::UkNationalLottery.new
    lucky_dip = lottery.lucky_dip

    lucky_dip.should eq lucky_dip.uniq
  end

  it "picks balls between 1 and 59 (inclusive)" do
    ld = UkNationalLottery::UkNationalLottery.new
    dip = ld.lucky_dip 
    range = 1..59
    dip.all? { |ball| range.includes? ball }.should eq true
  end

  it "gives a different set of balls next time" do
    lottery = UkNationalLottery::UkNationalLottery.new
    lucky_dip1 = lottery.lucky_dip
    lucky_dip2 = lottery.lucky_dip

    lucky_dip1.should_not eq lucky_dip2
  end

  it "sorts the balls in ascending order" do

  end

end
