class CreatePodcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :podcasts do |t|
      t.string :title
      t.string :description
      t.integer :profile_id
      t.integer :duration
      t.integer :play_count
      t.boolean :archived

      t.timestamps
    end
  end
end
