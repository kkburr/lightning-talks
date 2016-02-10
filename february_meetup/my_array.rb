# Example structure and implementation of first method in Iteration 0
class MyArray
  attr_accessor :array, :count

  def initialize
    @array = Array.new
    @count = 0
  end

  def my_push(param)
    self.array[count] = param
    self.count += 1
    self
  end
end
