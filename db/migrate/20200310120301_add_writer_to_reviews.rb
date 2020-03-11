class AddWriterToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :writer, foreign_key: { to_table: :users }
  end
end
