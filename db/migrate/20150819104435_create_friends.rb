class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :user_id
      t.integer :reciever_id
      t.boolean :relationship

      t.timestamps null: false
    end
  end
end
