class Microwave
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def timer
    return "00:0#{number}"if number < 9
    return "00:#{number}"if number < 60

    hours = (number / 60).round(0)
    minutes = number % 60

    if hours 
  end
  
end