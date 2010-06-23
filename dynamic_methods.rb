#!/usr/local/bin/macruby -w

class MyClass
  def mymethod(arg)
    arg * 2
  end
  
  define_method :dynamic do |arg|
    arg * 3
  end
end