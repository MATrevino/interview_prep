class Microwave
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def timer
    minutes = number / 100
    seconds = number % 100
    "#{minutes}:#{seconds}"
  end
  
end