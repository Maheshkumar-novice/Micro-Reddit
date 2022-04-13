class AddReferenceToUserId < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :user_id, :integer
    add_reference :posts, :user, foreign_key: true
  end
end
