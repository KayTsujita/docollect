class Group < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :documents

  validates :group_name,     presence: true
  validates :pdf,          presence: true
end

