class Timer
  attr_accessor :seconds
  attr_reader :time_string

  def seconds(time=0)
    @seconds = time
  end

  def time_string
    sec = @seconds % 60
    min = @seconds / 60 % 60
    hr = @seconds / 3600
    @time_string = "#{padded(hr)}:#{padded(min)}:#{padded(sec)}"
  end

  def padded(number)
    number_string = number.to_s
    if number_string.length == 1
      @padded = "0" + number_string
    else
      @padded = number_string
    end
  end

end