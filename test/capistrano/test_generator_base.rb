require File.expand_path(File.dirname(__FILE__) + '/../helper')

class TestGeneratorBase < MiniTest::Unit::TestCase
  
  def setup
    @no_shell_args              = []
    @tiny_deployment_shell_args = []
  end
  
  def test_banner_if_starting_generator_with_no_args
    Capistrano::Cli::Generator.start(@no_shell_args)
    skip "Not implemented yet"
  end
  
end