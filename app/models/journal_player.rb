class JournalPlayer < ApplicationRecord
  belongs_to :team
  belongs_to :type_action
  belongs_to :player
  has_many :game
end
