#!/usr/local/bin/macruby

require "test/unit"
require "blocks.rb"

class TestBlocks < Test::Unit::TestCase
  
  class Resource
    def dispose
      @disposed = true
    end
    
    def disposed?
      @disposed
    end
  end
  
  def setup
    @obj = MyBlockClass.new
  end
  
  def test_block_given
    assert(@obj.mymethod { "Here's a block" } == "Here's a block", "Call to mymethod should return 'Here's a block'.")
  end
  
  def test_disposes_of_resources
    r = Resource.new
    using(r) {}
    assert r.disposed?
  end
  
  def test_disposes_of_resource_in_case_of_exception
    r = Resource.new
    assert_raises(Exception) {
      using(r) {
        raise Exception
      }
    }
    assert r.disposed?
  end
end