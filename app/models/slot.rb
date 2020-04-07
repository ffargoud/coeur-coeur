class Slot < ApplicationRecord
  belongs_to :user
  belongs_to :center

  validates :date, presence: true
  validates :h_debut, presence: true
  validates :h_fin, presence: true
  validates :type_mission, presence: true
end
