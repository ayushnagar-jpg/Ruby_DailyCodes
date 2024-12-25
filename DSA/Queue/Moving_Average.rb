class MovingAverage
  def initialize(size)
    @size = size
    @queue = []
    @sum = 0
  end

  def next(val)
    @queue.push(val)
    @sum += val

    if @queue.length > @size
      @sum -= @queue.shift
    end

    @sum.to_f / @queue.length
  end
end


moving_average = MovingAverage.new(3)
puts moving_average.next(1)  
puts moving_average.next(10) 
puts moving_average.next(3)  
puts moving_average.next(5)  
