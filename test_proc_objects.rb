#!/usr/local/bin/macruby -w

require "test/unit"
require "proc_objects.rb"

class TestProcObjects < Test::Unit::TestCase
  
  def setup
    @obj = ProcObjects.new
  end
  
  def test_lambda_as_proc
    l = lambda { |x| x + 1 }
    assert_equal("Proc", l.class.to_s)
  end
  
  def test_math
    assert_equal(6, @obj.math(3,3) { |a,b| a + b } )
  end
  
end