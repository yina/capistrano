require File.expand_path(File.dirname(__FILE__) + '/helper')

class TestPathForExecutableHelper < MiniTest::Unit::TestCase
  
  def test_executable_with_no_presets_returns_the_shell_expander
    assert_equal '$(which \'nonexistent value\')', executable('nonexistent value')
  end
  
end
