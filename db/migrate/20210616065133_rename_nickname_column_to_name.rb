class RenameNicknameColumnToName < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :nickname, :name
  end
end
