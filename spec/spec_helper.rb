# spec/spec_helper.rb
require 'rack/test'
require 'rspec'
require 'capybara'
require 'capybara/dsl'
ENV['RACK_ENV'] = 'test'

require File.expand_path '../../web.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  include Capybara::DSL # Adding this line solved the error

  def app() Sinatra::Application end
end

  class Capybara::Session
    def submit(element)
      Capybara::RackTest::Form.new(driver, element.native).submit({})
    end
  end


Capybara.app = Sinatra::Application

# For RSpec 2.x and 3.x
RSpec.configure do |c|
	c.include RSpecMixin 
	c.include Capybara
end
