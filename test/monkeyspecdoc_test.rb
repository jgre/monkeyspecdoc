$: << File.join(File.dirname(__FILE__), '..', 'lib')
$: << File.dirname(__FILE__)

require 'test/unit'
require 'test/unit/ui/console/testrunner'

require 'rubygems'
require 'shoulda'
require 'monkeyspecdoc'
require 'stringio'


class TestMonkeySpecDoc < Test::Unit::TestCase

  def setup
    @sio = StringIO.new
  end

  should 'print success messages' do
    require 'success_test'
    Test::Unit::UI::Console::TestRunner.new(TestSuccess, 2, @sio).start
    assert_match /^Success:$/, @sio.string
    assert_match /^- should be ok: .*OK/, @sio.string
  end

  should 'print failure messages' do
    require 'failure_test'
    Test::Unit::UI::Console::TestRunner.new(TestFailure, 2, @sio).start
    assert_match /^Failure:$/, @sio.string
    assert_match /^- should be ok: .*FAILED.*(1)/, @sio.string
    assert_match /1\) Failure should be ok FAILED:/, @sio.string
    assert_match /Flunked./, @sio.string
  end

  should 'print error messages' do
    require 'error_test'
    Test::Unit::UI::Console::TestRunner.new(TestError, 2, @sio).start
    assert_match /^Error:$/, @sio.string
    assert_match /^- should be ok: .*ERROR.*(1)/, @sio.string
    assert_match /1\) NameError in Error should be ok:/, @sio.string
    assert_match /NameError: undefined local variable or method .bla. for/,
      @sio.string
  end

end
