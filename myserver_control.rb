# this is myserver_control.rb

require 'rubygems'        # if you use RubyGems
require 'daemons'
require_relative "app/models/cat"
puts "yes entered"

Daemons.run('myserver.rb')
