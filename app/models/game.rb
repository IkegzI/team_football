class Game < ApplicationRecord
  has_many :visitors, :primary_key => 'visitors_id', :class_name => "Team", foreign_key: :id
  has_many :owners, :primary_key => 'owners_id', :class_name => "Team", foreign_key: :id
  belongs_to :country
  belongs_to :region
  has_many :journal_players

  scope :last_ids, lambda {|args|
    order(:date).last(args).map{|game| game.id}
  }

end
