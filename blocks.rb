#!/usr/local/bin/macruby

class MyBlockClass
  def mymethod
    return yield if block_given?
    'no block'
  end
end

module Kernel
  def using(resource)
    begin
      yield
    ensure
      resource.dispose
    end
  end
end