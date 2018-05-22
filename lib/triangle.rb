class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def triangle?
    if ((@side_1 > 0) && (@side_2 > 0) && (@side_3 > 0)) &&
      ((@side_1 + @side_2) > @side_3 && (@side_2 + @side_3) > @side_1 && (@side_1 + @side_3) > @side_2)
      return true
    end
  end

  def triangle_type
      if ((@side_1 == @side_2) && (@side_2 == @side_3))
        return :equilateral
      elsif ((@side_1 == @side_2) || (@side_1 == @side_3) || (@side_2 == @side_3))
        return :isosceles
      else
        return :scalene
      end
  end

  def kind
    if triangle?
      triangle_type
    else
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Error"
    end
  end

end
