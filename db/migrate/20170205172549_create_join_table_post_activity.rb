class CreateJoinTablePostActivity < ActiveRecord::Migration[5.0]
  def change
    create_join_table :posts, :activities do |t|
      t.index [:post_id, :activity_id]
      t.index [:activity_id, :post_id]
    end
  end
end
