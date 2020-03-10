class RemoveJamSessionFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :jam_session_id, :references
  end
end
