require_relative './hell_triangle_validator.rb'

class HellTriangle
  class << self
    def resolve(input)
      HellTriangleValidator.new(input).validate

      print "The maximum result is: #{sum(input)}"
    end
    private

    def sum(input)
      i = 0
      maximum_index = 0
      total = 0
      while i <= input.size - 2 do
        compare = []
        compare << input[i+1][maximum_index]
        compare << input[i+1][maximum_index+1]
        
        total += compare.max + input[i][maximum_index] if i == 0
        total += compare.max if i != 0

        maximum_index = input[i+1].index {|number| number == compare.max}
        i += 1;
      end
      total
    end
  end
end
