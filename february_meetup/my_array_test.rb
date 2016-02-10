require 'minitest/autorun'
require_relative 'my_array'
# http://ruby-doc.org/stdlib-2.0.0/libdoc/minitest/rdoc/MiniTest/Assertions.html

class MyArrayTest < Minitest::Test
  def setup
    @object = MyArray.new
    @array = @object.array
  end

  def test_my_push
    @object.my_push(5)
    assert_equal @array, [5]
    @object.my_push(8)
    assert_equal @array, [5, 8]
  end
end
