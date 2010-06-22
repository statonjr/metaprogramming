#!/usr/local/bin/macruby -w

require 'test/unit'
require 'string_additions'

class ToAlphanumericTest < Test::Unit::TestCase
  def test_strips_non_alphanumeric_characters
    assert_equal "3 the Magic Number", "#3, the *Magic*, Number?".to_alphanumeric
  end
end