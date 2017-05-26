class HellTriangleValidator

  INVALID_TRIANGLE = 'this is not a triangle'
  INVALID_PARTS = 'all parts of input must be Array type'

  def initialize(input)
    @input = input
  end

  def validate
    begin
      check_type(input)
      check_triangle
    rescue ArgumentError => msg
      print msg 
    end
  end

  private

  attr_reader :input
    
  def check_type(part)
    return if part.class == Array

    invalidate(INVALID_PARTS)
  end

  def check_triangle
    check_type(input)
    input.map { |part| check_type(part) }
    invalidate(INVALID_TRIANGLE) if input.count <= 1

    for i in 0..quantity.count - 2
      invalidate(INVALID_TRIANGLE) if quantity[i].next != quantity[i+1]
    end
  end

  def quantity
    input.map { |p| p.count }
  end

  def invalidate(message)
    raise ArgumentError.new(message)
  end

end
