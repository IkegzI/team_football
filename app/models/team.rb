class Team < ApplicationRecord
  belongs_to :region
  belongs_to :country
  has_many :players
  has_many :games, foreign_key: :owners_id
  has_many :games, foreign_key: :visitors_id
end