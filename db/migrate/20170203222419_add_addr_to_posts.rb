class AddAddrToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :addr, :string
  end
end
