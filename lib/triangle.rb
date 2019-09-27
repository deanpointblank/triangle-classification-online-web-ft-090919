class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    case
      when side_3 == side_2 && side_2 == side_1
        :equilateral
      when (side_2 == side_3 && side_2 > side_1) || (side_1 == side_2 && side_2 > side_3) || (side_3 == side_1 && side_1 > side_2)
        :isosceles
      when side_3 != side_2 && side_2 != side_1 && side_1 != side_3
        :scalene
      else
        class TriangeError
          
        end
  end
  
end
