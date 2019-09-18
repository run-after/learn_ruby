class Timer
  #write your code here
  
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(time)
    @seconds = time
  end

  def time_string
    if @seconds < 60
      if @seconds < 10
        @time_string = "00:00:0"+@seconds.to_s
      else
        @time_string = "00:00:"+@seconds.to_s
      end
    elsif @seconds < 3600
      mins = @seconds/60  
      @seconds = @seconds%60  
      if mins < 10
        if @seconds < 10
          @time_string = "00:0" + mins.to_s + ":0" + @seconds.to_s
        else
          @time_string = "00:0" + mins.to_s + ":" + @seconds.to_s
        end
        
      elsif mins < 60
        if @seconds < 10
          @time_string = "00:" + mins.to_s + ":0" + @seconds.to_s
        else
          @time_string = "00:" + mins.to_s + ":" + @seconds.to_s
        end
      end
     else #if more than 1hr
        hrs = @seconds/60/60
        mins = (@seconds/60) - 60
        @seconds = @seconds%60 
        if hrs < 10
          if mins < 10
            if @seconds < 10
              @time_string = "0" + hrs.to_s + ":0" + mins.to_s + ":0" + @seconds.to_s
            else
              @time_string = "0" + hrs.to_s + ":0" + mins.to_s + ":" + @seconds.to_s
            end
          #else
           # @time_string = "0" + hrs.to_s + ":0" + mins.to_s + ":0" + @seconds.to_s
          end
        #else  
         # @time_string = "0" + hrs.to_s + ":" + mins.to_s + ":" + @seconds.to_s
        end
      
      #end
      #else
       # @time_string = "" + hrs.to_s + ":" + mins.to_s + ":" + @seconds.to_s
    end

    
  end

  
end
