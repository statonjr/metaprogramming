#!/usr/local/bin/macruby -w

require "test/unit"
require "clean_room.rb"

class TestCleanRoom < Test::Unit::TestCase
  def test_instance_eval
    assert_equal('Doing something...', @obj.instance_eval { do_something })
  end
end