class Centre < ApplicationRecord
  belongs_to :user

  validates :adresse, presence: true
  validates :telephone, presence: true
end
