#!/usr/local/bin/macruby -w

class MyClass
  
  # Remove this method to test NoMethodError
  def method_missing(name, *args)
    return "MyClass#method_missing() called"
  end
  
  # Override respond_to? because Ghost Methods do not show up in the call to Object#methods
  # Ghost Methods also don't appear in the documentation
  def respond_to?(m)
    m || super
  end
  
end