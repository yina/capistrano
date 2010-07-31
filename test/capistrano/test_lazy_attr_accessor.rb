require File.expand_path(File.dirname(__FILE__) + '/../helper')

# Ensure that we can run the tests instead of exploding
# before we are even in test-land!
if Object.respond_to?(:lattr_accessor)
  class LazyAttrAccessorTestClass
    lattr_accessor :test_accessor
  end
end

class TestLazyAttrAccessor < MiniTest::Unit::TestCase

  def setup
    @laatc = LazyAttrAccessorTestClass.new
  end

  def test_default
    assert_equal nil, @laatc.test_accessor
  end
  
  def test_having_a_simple_value
    @laatc.test_accessor = 'test value'
    assert_equal 'test value', @laatc.test_accessor
  end

  def test_having_a_lambda_value
    @laatc.test_accessor = lambda { 'test value from lambda' }
    assert_equal 'test value from lambda', @laatc.test_accessor
  end

end