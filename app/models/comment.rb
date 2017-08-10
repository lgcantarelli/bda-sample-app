class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :message, type: String
  field :interactions, type: Hash

  has_one :comment_preview
  belongs_to :post
  belongs_to :user
end
