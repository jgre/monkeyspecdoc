$: << File.dirname(__FILE__)

require 'test/unit'
require 'rubygems'
require 'stringio'
require 'helloworld'

describe HelloWorld do

  before(:each) do
    @hello = HelloWorld.new
  end

  it 'should say "Hello, World!"' do
    sio = StringIO.new
    @hello.say_hello(sio)
    sio.string.should == 'Hello, World!'
  end

end
