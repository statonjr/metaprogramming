require "test/unit"
require "scope_gates"

class TestScopeGates < Test::Unit::TestCase
  
  def setup
    @obj = ScopeGate.new
  end
  
  def test_class_block
    assert_equal("Success", @obj.mymethod)
  end
end