class CreateUserIntruments < ActiveRecord::Migration[5.2]
  def change
    create_table :user_intruments do |t|
      t.string :level
      t.string :since
      t.references :instrument, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
