class Player < ApplicationRecord
  belongs_to :position
  belongs_to :region
  belongs_to :country
  belongs_to :team
end
