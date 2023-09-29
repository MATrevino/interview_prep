class Microwave
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def timer
    return "00:0#{number}"if number < 9
  end
  
end