class Game < ActiveRecord::Base
  validates_presence_of :home_team
  validates_presence_of :away_team
end