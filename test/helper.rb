require "rubygems"
require "bundler"
Bundler.setup(:test, :runtime)
Bundler.require(:test, :runtime)

# Push lib path onto the load path, makes the requires look 
# like how they would in the wild.
$LOAD_PATH.push File.dirname(__FILE__) + '/../lib/'

require 'capistrano'
require 'capistrano/cli/base'
require 'capistrano/cli/generator'

MiniTest::Unit.autorun