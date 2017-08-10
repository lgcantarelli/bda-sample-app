class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :description, type: String
  field :body, type: String
  field :upvotes, type: Integer

  belongs_to :user
  embeds_many :comments
end
