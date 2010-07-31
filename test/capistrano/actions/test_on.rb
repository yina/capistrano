require File.expand_path(File.dirname(__FILE__) + '/../../helper')
require 'capistrano/actions/on'

class TestActionOn < MiniTest::Unit::TestCase
  
  include Capistrano::Actions::On
  
  def test_on_requires_an_enumerable_first_arg
    assert_raises ArgumentError do
      on(nil)
    end
  end

  def test_2nd_arg_must_be_a_hash
    assert_raises ArgumentError do
      on(%w{example.com}, nil)
    end
  end

  def test_on_requires_a_block
    assert_raises ArgumentError do
      on(%w{example.com}, {})
    end
  end
  
end