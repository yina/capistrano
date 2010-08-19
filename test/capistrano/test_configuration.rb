require File.expand_path(File.dirname(__FILE__) + '/../helper')

class TestConfiguration < MiniTest::Unit::TestCase

  def setup
    ::Etc.stubs(:getlogin).returns('exampleuser')
    @configuration = ::Capistrano::Configuration.new
  end

  def test_deploy_as_defaults_to_the_current_user
    assert_equal 'exampleuser', @configuration.deploy_as
  end

  def test_default_scm_is_nil
    assert_equal nil, @configuration.scm
  end

  def test_known_stages
    assert_equal ::Set.new(%w(staging production)), @configuration.stages
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
  
  def test_default_shell_is_sh
    assert_equal '/bin/sh', @configuration.shell
  end
  
  def test_deploy_to_default
    assert_equal '"/u/apps/example.com/"', @configuration.target_directory
  end
  
  def test_application_name_default
    assert_equal 'example.com', @configuration.application_name
  end
  
  def test_changing_application_name_correctly_defers_evaluation
    @configuration.application_name = 'test.com'
    assert_equal '"/u/apps/test.com/"', @configuration.target_directory
  end
  
  def test_default_repository_configuration
    assert_equal 'git://github.com/exampleuser/example.com.git', @configuration.repository
  end
  
  def test_deferred_repository_configuration
    @configuration.application_name = 'test.com'
    @configuration.deploy_as        = 'tester'
    assert_equal 'git://github.com/tester/test.com.git', @configuration.repository
  end
  
end