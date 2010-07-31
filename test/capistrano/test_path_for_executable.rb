require File.expand_path(File.dirname(__FILE__) + '/../helper')

class TestPathForExecutable < MiniTest::Unit::TestCase
  
  def setup
    Capistrano.configure do |config|
      config.executables['rake'] = '/usr/local/bin/rake'
    end
  end
  
  def test_executable_with_no_presets_returns_the_shell_expander
    assert_equal '(which \'nonexistent value\')', executable('nonexistent value')
  end
  
  def test_executable_when_value_is_set
    assert_equal '/usr/local/bin/rake', executable('rake')
  end
  
end
