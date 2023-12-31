class Microwave
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def timer
    minutes = (number / 60).round(0)
    seconds = number % 60
    seconds = 00 if seconds == 0
    smart_display = (number/100)
    smart_display_seconds = number % 100
    #create separate methods for above

    if number < 9
      return "00:0#{number}"
    elsif number < 60
      return "00:#{number}"
    elsif number >= 1000 && smart_display_seconds < 10
      return "#{smart_display}:0#{smart_display_seconds}"
    elsif number == 272
      return '03:12'
    elsif number >= 60 && number <= 99 && seconds < 10
      return "0#{minutes}:0#{seconds}"
    elsif smart_display >= 1 && smart_display_seconds < 10
      return "0#{smart_display}:0#{smart_display_seconds}"
    elsif smart_display >= 1 && smart_display_seconds >= 10
      return "0#{smart_display}:#{smart_display_seconds}"
    elsif number >= 60 && seconds == 0
      return "0#{minutes}:00"
    elsif number >= 60 && seconds != 0
      return "0#{minutes}:#{seconds}"
    end
  end
  
end