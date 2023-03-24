class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    validate_triangle
  end

  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  private

  def validate_triangle
    raise TriangleError if [a, b, c].any? { |s| s <= 0 } || a + b <= c || b + c <= a || a + c <= b
  end

  class TriangleError < StandardError
  end
end
