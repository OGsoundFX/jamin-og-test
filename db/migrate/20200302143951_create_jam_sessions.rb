class CreateJamSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :jam_sessions do |t|
      t.string :title
      t.string :description
      t.string :genre
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
