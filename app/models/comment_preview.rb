class CommentPreview
  include Mongoid::Document
  field :message, type: String

  embedded_in :post
  belongs_to :comment
  belongs_to :user
end
