class CreateEventGames < ActiveRecord::Migration[5.2]
  def change
    create_table :event_games do |t|
      t.integer :game_id
      t.integer :event_id
      t.integer :game_votes, default: 0
      t.timestamps
    end
  end
end
