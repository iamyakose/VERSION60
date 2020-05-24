class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :bio
      t.integer :user_id
      t.string :fcm_token

      t.timestamps
    end
  end
end
