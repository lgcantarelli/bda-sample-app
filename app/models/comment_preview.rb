class CommentPreview
  include Mongoid::Document
  field :title, type: String
  field :message, type: String

  embeds_in :post
  belongs_to :comment
  belongs_to :user
end
