# TODO: Write documentation for `UkNationalLottery`
module UkNationalLottery
  VERSION = "0.1.0"

  class UkNationalLottery
    def lucky_dip
      choose_six_balls.sort
    end

    private def choose_six_balls
      (1..59).to_a.sample(6)
    end
  end
end
