class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.references :jam_session, foreign_key: true
      t.references :instrument, foreign_key: true

      t.timestamps
    end
  end
end
