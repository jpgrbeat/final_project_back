class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :img
      t.string :name
      t.string :description
      t.string  :category
      t.string  :mechanic
      t.string  :publisher
      t.integer  :playing_time
      t.integer  :min_players
      t.integer  :max_players
      t.timestamps
    end
  end
end
