require "rubygems"
require "bundler"
Bundler.setup(:test, :runtime)

require 'minitest/unit'
# require 'minitest/mock'
require 'mocha'

Dir.glob(File.dirname(__FILE__) + '/../lib/**/*.rb') do |file|
  require file
end

MiniTest::Unit.autorun