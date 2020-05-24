class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
      t.string :followable_type
      t.integer :followable_id
      t.string :follower_type
      t.integer :follower_id
      t.boolean :blocked

      t.timestamps
    end
  end
end
