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
  
  def test_perform_selector
    assert_equal 6, @obj.performSelector(:"mymethod:", :withObject => 3)
  end
  
  def test_define_method
    assert_equal 9, @obj.dynamic(3)
  end

end