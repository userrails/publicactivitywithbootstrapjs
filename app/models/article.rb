class Article < ActiveRecord::Base
  include PublicActivity::Model
  tracked
  
  attr_accessible :article_name
end