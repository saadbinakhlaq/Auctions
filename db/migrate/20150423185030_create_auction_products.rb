class CreateAuctionProducts < ActiveRecord::Migration
  def change
    create_table :auction_products do |t|
      t.float :value
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :auction_products, :products
  end
end
