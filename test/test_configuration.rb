require File.expand_path(File.dirname(__FILE__) + '/helper')

class TestDefaultConfiguration < MiniTest::Unit::TestCase

  def setup
    @configuration = ::Capistrano::Configuration.new
  end

  def test_deploy_as_defaults_to_the_current_user
    Etc.stubs(:getlogin).returns('exampleuser')
    assert_equal 'leehambley', @configuration.deploy_as
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
  
  def test_color_configuration
    assert_equal true, @configuration.color
  end
  
  def test_changing_the_environment_variable_changes_the_environment_hash_lazy_loading
    @configuration.environment_variable = 'TEST_ENV'
    assert_equal 'production', @configuration.environment['TEST_ENV']
  end
  
  def test_forcing_the_path_to_the_smallest_possible
    assert_equal '/usr/bin:/bin:/usr/sbin', @configuration.environment['PATH']
  end
  
end