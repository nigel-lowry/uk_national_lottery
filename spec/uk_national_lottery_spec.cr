require "./spec_helper"

describe UkNationalLottery do
  describe "#lucky_dip" do
    it "picks 6 balls" do
      lottery = UkNationalLottery::UkNationalLottery.new
      lottery.lucky_dip.size.should eq 6
    end

    it "picks 6 unique balls" do
      lottery = UkNationalLottery::UkNationalLottery.new
      lucky_dip = lottery.lucky_dip

      lucky_dip.should eq lucky_dip.uniq
    end

    it "picks balls between 1 and 59 (inclusive)" do
      lottery = UkNationalLottery::UkNationalLottery.new
      lucky_dip = lottery.lucky_dip 

      one_to_fifty_nine_inclusive = 1..59

      lucky_dip.each { |ball| one_to_fifty_nine_inclusive.should contain(ball) }
    end

    it "gives a different set of balls next time" do
      lottery = UkNationalLottery::UkNationalLottery.new
      lucky_dip1 = lottery.lucky_dip
      lucky_dip2 = lottery.lucky_dip

      lucky_dip1.should_not eq lucky_dip2
    end

    it "sorts the balls in ascending order" do
      lottery = UkNationalLottery::UkNationalLottery.new
      lucky_dip = lottery.lucky_dip

      lucky_dip.should eq lucky_dip.sort
    end
  end
end
