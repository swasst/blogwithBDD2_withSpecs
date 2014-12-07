require 'rails_helper'

describe Post do

  describe "creation" do

    context "valid attributes" do

      it "should be valid" do
        post = Post.new(:title=> "Hello World", :content=> "First Post", :post_time =>DateTime.now)
        post.should be_valid
      end

    end

  end
  context "invalid attributes" do

      it "should not be valid" do
        post = Post.new(:title=> "Hello", :content=> "Sample", :post_time =>DateTime.now)
        post.should_not be_valid
      end

    end
end



