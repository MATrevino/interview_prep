class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40

  def initialize

  end

  def remaining_minutes_in_oven(time)
    EXPECTED_MINUTES_IN_OVEN - time
  end

end