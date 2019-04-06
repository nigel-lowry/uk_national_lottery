require "./spec_helper"

describe UkNationalLottery do
  # TODO: Write tests

  # it "works" do
  #   false.should eq(true)
  # end

  it "picks 6 balls" do
    ld = UkNationalLottery::UkNationalLottery.new
    ld.lucky_dip.size.should eq 6
  end

  it "picks 6 unique balls" do
    ld = UkNationalLottery::UkNationalLottery.new
    ld.lucky_dip.should eq ld.lucky_dip.uniq
  end

  it "picks balls between 1 and 59 (inclusive)" do

  end

end
