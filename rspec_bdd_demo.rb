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

describe Factorial do
  it 'computes factorial' do
    result = Factorial.new(4).compute
    result.should eq(24)
  end

  it 'can compute a different factorial' do
    result = Factorial.new(5).compute
    result.should eq(120)
  end

  context 'number is 1' do
    it 'returns 1' do
      result = Factorial.new(1).compute
      result.should eq(1)
    end
  end

  context 'number is 0' do
    it 'returns 1' do
      result = Factorial.new(0).compute
      result.should eq(1)
    end
  end

  context 'number is negative' do
    it 'raises an argument error' do
      lambda { Factorial.new(-10).compute }.should raise_error(ArgumentError)
    end
  end
end
