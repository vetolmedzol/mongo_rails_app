# frozen_string_literal: true

class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Enum
  include Mongoid::Attributes::Dynamic

  field :title, type: String
  field :body, type: String

  enum :status, %i[pending approved declined]

  has_many :comments, dependent: :destroy

  validates_presence_of :title, :body
  validates_uniqueness_of :title, :body

end
