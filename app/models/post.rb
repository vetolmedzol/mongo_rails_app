# frozen_string_literal: true

class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :body, type: String
  has_many :comments, dependent: :destroy

  validates_presence_of :title, :body
  validates_uniqueness_of :title, :body

end
