class Array

  def sum
    if self.empty?
      return 0
    else
      s = 0
      self.each { |x|
        s += x }
      return s
    end
  end

  def square
    if self.empty?
      return self
    else
      self.map do |x|
        x * x
      end
    end
  end

  def square!
    if self.empty?
      return self
    else
      i = 0
      self.each do |x|
        self[i]= x * x
        i += 1
      end
    end  
  end

end