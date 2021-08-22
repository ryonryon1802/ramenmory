class Noodle < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :photo, presence: true
  validates :store, presence: true
  validates :location, presence: true
end
