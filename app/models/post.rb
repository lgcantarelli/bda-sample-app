class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :description, type: String
  field :body, type: String

  has_many :comments
  embeds_many :comment_previews
  belongs_to :user
end
