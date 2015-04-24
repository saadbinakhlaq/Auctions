class PlaceBid
  def initialize options
    @value = options[:value]
    @user_id = options[:user_id]
    @auction_product_id = options[:auction_product_id]
  end

  def execute
    auction_product = AuctionProduct.find @auction_product_id
    bid = auction_product.bids.build value: @value, user_id: @user_id

    if bid.save
      return true
    end
  end
end
