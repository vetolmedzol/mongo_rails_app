# frozen_string_literal: true

class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :message, type: String
  belongs_to :post

  validates_presence_of :name, :message
  validates_uniqueness_of :name, :message
end
