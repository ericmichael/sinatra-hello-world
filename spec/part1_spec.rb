# spec/app_spec.rb
require File.expand_path '../spec_helper.rb', __FILE__

describe "My application" do
  it "should allow accessing the home page [25 points]" do
    get '/'
    # Rspec 2.x
    expect(last_response).to be_ok
  end

  it "should say 'Hello World' when home page is accessed with no parameters [25 points]" do
    get '/'
    # Rspec 2.x
    expect(last_response.body).to eq("Hello World")
  end

  it "should say 'Hello Eric' when home page is accessed with parameter name=Eric [25 points]" do
  	get '/', {"name"=>"Eric"}
  	expect(last_response.body).to eq("Hello Eric")
  end

   it "should say 'Hello Felisha' when home page is accessed with parameter name=Felisha [25 points]" do
  	get '/', {"name"=>"Felisha"}
  	expect(last_response.body).to eq("Hello Felisha")
  end
end