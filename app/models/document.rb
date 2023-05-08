class Document < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_one_attached :pdf

  with_options presence: true do
  validates :document_title
  validates :description
  validates :pdf
  end

end
