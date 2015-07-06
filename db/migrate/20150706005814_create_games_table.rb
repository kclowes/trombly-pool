class CreateGamesTable < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :home_team
      t.string :away_team
      t.string :bowl
      t.date :date
      t.integer :spread

      t.timestamps
    end
  end
end
