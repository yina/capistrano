require File.expand_path(File.dirname(__FILE__) + '/../helper')

class TestCapistranoLogger < MiniTest::Unit::TestCase

  def test_that_it_behaves_as_a_standard_logger
    assert ::Capistrano::Logger.new.is_a? ::Logger
  end

end