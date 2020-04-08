class Centre < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :adresse, presence: true
  validates :telephone, presence: true
end
