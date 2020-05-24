class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.bigint :reporter_profile_id
      t.string :reportable_type
      t.bigint :reportable_id
      t.integer :problem
      t.integer :status
      t.text :observations
      t.jsonb :reportable_metadata

      t.timestamps
    end
  end
end
