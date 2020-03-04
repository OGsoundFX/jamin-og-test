class RenameUserInstruments < ActiveRecord::Migration[5.2]
  def change
    rename_table(:user_intruments, :user_instruments)
  end
end
