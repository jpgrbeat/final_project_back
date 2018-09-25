class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.integer :player_count
      t.date    :date
      t.string    :time_start
      t.string    :time_end
      t.boolean   :all_day?
      t.string  :description
      t.string :address
      t.timestamps
    end
  end
end
