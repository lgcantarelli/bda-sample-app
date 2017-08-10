class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :body, type: String
  field :interactions, type: Hash

  has_many :comments
  embeds_many :comment_previews
  belongs_to :user
end
