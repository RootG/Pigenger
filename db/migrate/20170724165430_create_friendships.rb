class CreateFriendships < ActiveRecord::Migration[5.1]
  def change
    create_table :friendships do |t|
      t.references :user, references: :user
      t.references :friend, references: :user

      t.timestamps
    end
    add_index :friendships, [:user_id, :friend_id], unique: true
  end
end
