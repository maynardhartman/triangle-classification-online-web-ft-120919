require 'pry'
require_relative '../lib/CODES'

class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3
  
    def initialzie(side_1, side_2,side_3)
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
      
    end
    
  def kind(side_1, side_2, side_3)
    case kind
    when is_equalateral(side_1, side_2, side_3)
      return(":equalateral")
    when is_isosceles(side_1, side_2, side_3)
      return(":isosclese")
    when is_scalene(side_1, side_2, side_3)
      return(":scalene")
    end
  end
    
  def equilateral
    return(is_equilateral())
  end
  
  def isosceles
    return(is_isosceles())
  end
  
  def scalene
    return(scalene())
  end
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def is_equilateral(side_1, side_2, side_3)
    if (@side_1 == @side_2) and (@side_2 == @side_3) then
      return(true)
    else
      begin
        raise TriangleError("unequel sides",)
      rescue
        raise TriangleError("unknown error")
      end
   end
  end
   
   def is_isosceles(side_1, side_2, side_3)
      if (side_1 == side_2) || (side_3 != side_1) then
       return(true)
      else
       begin
        raise TriangleError("isosceles, #{side_1}, #{side_2}, #{side}")
       end
      end
       rescue
        raise TriangleError("Unknown Error!")
       end
   end
    
   def is_scalene(side_1, side_2, side_3)
      if (side_1 != side_2) || (side_1 != side_3) then
        return(true)
      else
        begin
          raise TriangleError("scalene", "#{side_1}", "#{side_2", "#{side_3}")
          return(false)
   
      end
        rescue
          raise TriangleError("Unknown Error")
          return(false)
      end
    end
 
  end
  def TriangleError(error_code = 0, side_1, side_2, side_3)
    attr_accessor :error_code
  
    def initiiaize(error_code)
      @error_code = error_code
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
    end
    
  end