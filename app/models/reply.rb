class Reply
  include Mongoid::Document
  include Mongoid::Timestamps
  field :message, type: String

  embedded_in :comment
  belongs_to  :user
end
