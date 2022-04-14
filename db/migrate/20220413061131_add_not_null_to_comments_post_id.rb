class AddNotNullToCommentsPostId < ActiveRecord::Migration[7.0]
  def change
    change_column_null :comments, :post_id, false
  end
end
