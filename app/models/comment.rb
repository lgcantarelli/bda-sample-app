class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :message, type: String
  field :interactions, type: Hash

  belongs_to :post
  belongs_to :user
  embeds_many :replies
end
