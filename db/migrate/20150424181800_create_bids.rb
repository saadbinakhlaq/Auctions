class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.references :user, index: true
      t.references :auction_product, index: true
      t.float :value

      t.timestamps null: false
    end
    add_foreign_key :bids, :users
    add_foreign_key :bids, :auction_products
  end
end
