class Document < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_one_attached :image

  validates :document_title,     presence: true
  validates :description,          presence: true
end
