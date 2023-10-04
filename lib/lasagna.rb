class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40

  def initialize

  end

  def remaining_minutes_in_oven(time)
    EXPECTED_MINUTES_IN_OVEN - time
  end

  def preparation_time_in_minutes(layers)
    layers * 2
  end

end