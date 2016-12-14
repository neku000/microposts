class ChangeTimezoneToUsers < ActiveRecord::Migration
  #変更後の型
  def up
    change_column :Users, :timezone, :string
  end

  #変更前の型
  def down
    change_column :Users, :timezone, :intger
  end
end
