class RenameUserPasswordToHashedPassword < ActiveRecord::Migration
  def up
  	change_column :user, :password, :hashed_password
  end

  def down
  end
end
