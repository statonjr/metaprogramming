#!/usr/local/bin/macruby -w

# Scope Gates change the scope of variables in Ruby. Scope changes when Ruby sees the keywords
# class, module, or def. To pass outside-scope variable through scope gates, use method calls instead
# of class, module, or def.

var = "Success"

ScopeGate = Class.new do
  define_method :mymethod do
    return "#{var}"
  end
end

def define_methods
  
  shared = 0
  
  Kernel.send :define_method, :counter do
    shared
  end
  
  Kernel.send :define_method, :inc do |x|
    shared += x
  end
  
end

define_methods
inc(4)