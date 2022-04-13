class AddUserRefToComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :user_id, :integer
    add_reference :comments, :user, foreign_key: true
  end
end
