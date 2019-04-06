# TODO: Write documentation for `UkNationalLottery`
module UkNationalLottery
  VERSION = "0.1.0"

  # TODO: Put your code here
  class UkNationalLottery
    def lucky_dip
      (1..59).to_a.sample(6).sort
    end
  end
end
