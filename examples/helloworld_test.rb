$: << File.dirname(__FILE__)

require 'test/unit'
require 'rubygems'
require 'shoulda'
require 'stringio'
require 'helloworld'

class TestHelloWorld < Test::Unit::TestCase

  context 'HelloWorld' do

    setup do
      @hello = HelloWorld.new
    end

    should 'say "Hello, World!"' do
      sio = StringIO.new
      @hello.say_hello(sio)
      assert_equal 'Hello, World!', sio.string
    end

  end
end
