#!/usr/local/bin/macruby -w

# Scope Gates change the scope of variables in Ruby. Scope changes when Ruby sees the keywords
# class, module, or def. To pass outside-scope variable through scope gates, modify your code 
# to remove class, module, or def.

var = "Success"

ScopeGate = Class.new do
  define_method :mymethod do
    return "#{var}"
  end
end