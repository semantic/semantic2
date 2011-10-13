require 'spec_helper'

describe "Episodes" do
  describe "GET /" do
    it "should show the episodes" do
      get root_path
      response.status.should be(200)
    end
  end

  describe "GET /episodes" do
    it "should redirecto to the root path" do
      get episodes_path
      response.status.should be(301)
      # TODO Check redirect target is /
    end
  end
end
