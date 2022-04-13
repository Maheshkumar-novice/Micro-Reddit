class AddPostRefToComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :post_id, :integer
    add_reference :comments, :post, foreign_key: true
  end
end
