class User < ActiveRecord::Base
  has_many :comments, :conditions => {:id => 0..1000}
  has_many :commented_posts, :through => :comments, :source => :post, :uniq => true, :conditions => '1=1'
  has_many :commented_authors, :through => :commented_posts, :source => :author, :uniq => true
  has_many :posts_of_interest, :through => :commented_authors, :source => :posts_of_similar_authors, :uniq => true
  has_many :categories_of_interest, :through => :posts_of_interest, :source => :category, :uniq => true
end
