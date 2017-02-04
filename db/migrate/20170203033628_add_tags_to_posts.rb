class AddTagsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :tags, :text, array:true, default: []
  end
end
