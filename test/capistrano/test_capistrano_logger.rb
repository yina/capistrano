require File.expand_path(File.dirname(__FILE__) + '/../helper')

class TestCapistranoLogger < MiniTest::Unit::TestCase

  def test_that_it_behaves_as_a_standard_logger
    Logger.instance_methods.each do |logger_behaviour|
      assert ::Capistrano::Logger.instance_methods.include?(logger_behaviour)
    end
  end

end