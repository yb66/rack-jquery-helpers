require 'spec_helper'

require_relative "../lib/rack/jquery/helpers.rb"

describe "Helpers" do
  include Rack::JQuery::Helpers
  subject { caching_headers "abc", Rack::Utils.rfc2109(Time.now) }
  it { should_not be_nil }
  it { should be_a_kind_of Hash }
  its(:keys) { should =~ ["Last-Modified", "Expires", "Cache-Control", "Etag", "Content-Type"] }
  its(:values) { should satisfy{|values| values.all?{|x| !x.nil?} } }
end