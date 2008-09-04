require 'test/unit'
require 'rubygems'
require 'shoulda'

class TestFailure < Test::Unit::TestCase

  should 'be ok' do
    flunk
  end

end

