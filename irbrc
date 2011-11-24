# .irbrc
# vim:syntax=ruby

#
# See also:
#
# http://dotfiles.org/~sd/.irbrc
#

puts "Loading #{__FILE__}..."

require 'rubygems'
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

#
# https://github.com/samg/diffy
#

begin
  require 'diffy'
  Diffy::Diff.default_format = :color
rescue LoadError
  # noop in case we cannot load the gem
end

#
# https://github.com/blackwinter/wirble
#

begin
  require 'wirble'
  Wirble.init(
    :history_size => 4096
  )
  Wirble.colorize
rescue LoadError
  # noop in case we cannot load the gem
end

#
# https://github.com/cldwalker/hirb
#

begin
  require 'hirb'
  Hirb.enable
rescue LoadError
  # noop in case we cannot load the gem
end

#
# https://github.com/citizen428/methodfinder
#

begin
  require 'methodfinder'
  class Object
    # Find the methods that return the given result
    def method_finder(result)
      MethodFinder.find(self, result)
    end
  end
rescue LoadError
  # noop in case we cannot load the gem
end

#
# http://stackoverflow.com/questions/123494/whats-your-favourite-irb-trick
#

class Object
  # Return only the methods not present on basic objects
  def interesting_methods
    (self.methods - Object.new.methods).sort
  end

  # List methods which aren't in superclass
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end
end

class Array
  # Returns a columnated version of the array's elements
  def columnate
    `echo "#{self.join("\n")}" | column`
  end
end

#
# Advanced Rails Recipes - recipe 37
#

begin
  load File.join(File.dirname(__FILE__), '.railsrc') if defined? Rails or ENV['RAILS_ENV']
rescue LoadError
  # NOOP... it's OK if the file doesn't exist
end