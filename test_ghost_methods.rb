#!/usr/local/bin/macruby -w

require 'test/unit'
require 'ghost_methods'

class GhostMethodTest < Test::Unit::TestCase
  
  def setup
    @obj = GhostMethods.new
  end
  
  # This test should fail if method_missing is defined
  # def test_no_method_error
  #  assert_raise NoMethodError do
  #    @obj.mymethod
  #  end
  # end
  
  def test_method_missing
    assert_equal "MyClass#method_missing() called", @obj.mymethod
  end
  
  def test_respond_to?
    assert @obj.respond_to?("mymethod"), "@obj should respond to any method."
  end

end