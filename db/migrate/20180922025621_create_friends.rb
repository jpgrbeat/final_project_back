class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.integer :invitee_id
      t.integer :invitor_id
      t.timestamps
    end
  end
end
