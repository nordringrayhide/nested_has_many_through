require "spec_helper"

describe Post do

  describe "(newly created)" do

    before do
      @post = Post.create!
      @author = Author.create!
      @source = Source.create!
    end

    it "#sources should == []" do
      @post.sources.should == []
    end

    describe "(that has an author)" do

      before do
        @post = Post.create! :author => @author
      end

      it "#sources should == []" do
        @post.sources.should == []
      end

    end

    describe "(that has an author who declared his sources)" do

      before do
        @post = Post.create! :author => @author
        @source = Source.create! :author => @author
      end

      it "#sources should == [@source]" do
        @post.author.sources.should == [@source]
        @post.sources.should == [@source]
      end

    end

  end

end
