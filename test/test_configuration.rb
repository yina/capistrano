require File.expand_path(File.dirname(__FILE__) + '/helper')

class TestDefaultConfiguration < MiniTest::Unit::TestCase

  def setup
    @configuration = ::Capistrano::Configuration.new
  end

  def test_default_scm_is_git
    assert_equal ::Capistrano::Scm::Git, @configuration.scm
  end

  def test_known_stages
    assert_equal Set.new(%w(staging production)), @configuration.stages
  end

  def test_default_stage
    assert_equal 'production', @configuration.default_stage
  end

  def test_default_environmental_variable
    assert_equal 'RACK_ENV', @configuration.environment_variable
  end
  
  def test_default_environmental_variable
    assert_equal 'production', @configuration.environment['RACK_ENV']
  end
  
end