require "rubygems"
require "bundler"
Bundler.setup(:test, :runtime)

require 'minitest/unit'
# require 'minitest/mock'
require 'mocha'
# require 'ruby-debug'

# Push lib path onto the load path, makes the requires look 
# like how they would in the wild.
$LOAD_PATH.push File.dirname(__FILE__) + '/../lib/'

require 'capistrano'
require 'capistrano/cli/base'
require 'capistrano/cli/generator'

MiniTest::Unit.autorun