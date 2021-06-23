class Post < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  has_many :likes, -> { prder(created_at: :desc) }, dependent: :destroy
  accepts_nested_attributes_for :photos
end
