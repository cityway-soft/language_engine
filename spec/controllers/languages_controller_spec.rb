require 'spec_helper'

shared_examples_for "an action changing language" do

  it "should change current_language" do
    expect(controller).to receive(:current_language=).with("dummy")
    make_request("dummy")
  end

  it "should redirect to referer if exists" do
    request.env["HTTP_REFERER"] = '/referer'
    make_request
    expect(response).to redirect_to('/referer')
  end

  it "should redirect to the homepage without referer" do
    request.env["HTTP_REFERER"] = nil
    make_request
    expect(response).to redirect_to('/')
  end

end

describe LanguagesController, :type => :controller do

  before(:each) do
    request.env["HTTP_REFERER"] = '/'
    allow(subject).to receive(:root_path).and_return("/")
  end
  # I18n should be reset for following views spec
  after(:each) do
    I18n.locale = :en
  end

  describe "GET show" do

    def make_request(language = "fr")
      get :show, :id => language 
    end

    it_should_behave_like "an action changing language"

  end

  describe "PUT update" do

    def make_request(language = "fr")
      put :update, :id => language 
    end

    it_should_behave_like "an action changing language"

  end

end
