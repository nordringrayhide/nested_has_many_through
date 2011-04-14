class Author < User
  has_many :posts
  has_many :categories, :through => :posts
  has_many :similar_posts, :through => :categories, :source => :posts
  has_many :similar_authors, :through => :similar_posts, :source => :author, :uniq => true
  has_many :posts_of_similar_authors, :through => :similar_authors, :source => :posts, :uniq => true
  has_many :commenters, :through => :posts, :uniq => true
end
