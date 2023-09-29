class Microwave
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def timer
    return "00:0#{number}"if number < 9
    return "00:#{number}"if number < 60
  end
  
end