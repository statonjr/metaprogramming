#!/usr/local/bin/macruby -w

require 'test/unit'
require 'dynamic_methods'

class DynamicMethodTest < Test::Unit::TestCase
  
  def setup
    @obj = MyClass.new
  end
  
  def test_standard_method_call
    assert_equal 6, @obj.mymethod(3)
  end
  
  def test_send_call
    assert_equal 6, @obj.send(:mymethod, 3)
  end

end