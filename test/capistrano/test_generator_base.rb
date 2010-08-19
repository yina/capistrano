require File.expand_path(File.dirname(__FILE__) + '/../helper')

class TestGeneratorBase < MiniTest::Unit::TestCase
  
  def setup
    @no_shell_args              = %w{}
    @tiny_deployment_shell_args = %w{. --tiny}
  end
  
  def test_banner_if_starting_generator_with_no_args
    stdout, stderr = capture_io {
      ::Capistrano::Cli::Generator.start(@no_shell_args)
    }
    assert_match stdout, /generate\s+\#/
    assert_equal "", stderr
  end
  
end