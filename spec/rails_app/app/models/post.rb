class Post < ActiveRecord::Base

  # testing with_scope
  def self.find_inflamatory(*args)
    with_scope :find => {:conditions => {:inflamatory => true}} do
      find(*args)
    end
  end

  # only test named_scope in edge
  named_scope(:inflamatory, :conditions => {:inflamatory => true}) if respond_to?(:named_scope)

  belongs_to :author
  belongs_to :category
  has_many :comments
  has_many :commenters, :through => :comments, :source => :user, :uniq => true
end
