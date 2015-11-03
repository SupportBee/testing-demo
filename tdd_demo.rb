require 'test/unit'

class Factorial
  def initialize(number)
    @number = number
  end

  def compute
    raise ArgumentError if negative_number?

    result = 1
    (1..@number).each do |i|
      result = result * i
    end
    result
  end

  private

  def negative_number?
    @number < 0
  end
end

class FactorialTest < Test::Unit::TestCase
  def test_factorial_one
    result = Factorial.new(1).compute
    assert_equal(result, 1)
  end

  def test_factorial_four
    result = Factorial.new(4).compute
    assert_equal(result, 24)
  end

  def test_factorial_five
    result = Factorial.new(5).compute
    assert_equal(result, 120)
  end

  def test_factorial_zero
    result = Factorial.new(0).compute
    assert_equal(result, 1)
  end

  def test_negative_factorial
    assert_raises(ArgumentError) { Factorial.new(-10).compute }
  end
end
