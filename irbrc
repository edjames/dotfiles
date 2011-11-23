require 'rubygems'
require 'irb/completion'
require 'wirble'
require 'hirb'

Wirble.init
Wirble.colorize

begin
  Hirb.enable if ENV['RAILS_ENV']
  Hirb.enable if Rails
rescue
  puts 'Cannot enable Hirb'
end

