require "rubygems"
require "bundler"
Bundler.setup(:test, :runtime)

require 'minitest/unit'
# require 'minitest/mock'
require 'mocha'

require File.dirname(__FILE__) + '/../lib/capistrano'

MiniTest::Unit.autorun