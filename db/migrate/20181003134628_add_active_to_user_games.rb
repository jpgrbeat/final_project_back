class AddActiveToUserGames < ActiveRecord::Migration[5.2]
  def change
    add_column :user_games, :active, :boolean, default: true
  end
end
