class Microwave
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def timer
    hours = (number / 60).round(0)
    minutes = number % 60
    smart_display = (number/100)
    #create separate methods for above

    if number < 9
      return "00:0#{number}"
    elsif number < 60
      return "00:#{number}"
    elsif number >= 60 && number != 100
      return "0#{hours}:00"
    elsif (number/100).to_s.length == 1
      return "0#{smart_display}:00"
    end
  end
  
end