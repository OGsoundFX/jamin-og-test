class AddReceiverToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :receiver, foreign_key: { to_table: :users }
  end
end
