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
      on(%w{example.com}, {}, nil)
    end
  end

  def test_the_block_should_have_the_current_host_name_when_exexuted
    on(%w{example.com}, {}) do |host|
      
    end
  end

  def test_if_the_block_raises_an_exception_host_list_should_be_cleared
    on(%w{example.com}, {}) do
      raise RuntimeError, "something bad happened here"
    end
  end
  
end