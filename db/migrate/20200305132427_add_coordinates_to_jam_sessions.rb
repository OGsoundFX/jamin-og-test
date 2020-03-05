class AddCoordinatesToJamSessions < ActiveRecord::Migration[5.2]
  def change
    add_column :jam_sessions, :latitude, :float
    add_column :jam_sessions, :longitude, :float
  end
end
