class AuctionProductsController < ApplicationController
  def create
    product = Product.find params[:product_id]
    auction_product = AuctionProduct.new auction_product_params.merge! product_id: product.id

    if auction_product.save
      redirect_to product, notice: 'Product was put to auction'
    else
      redirect_to product, alert: 'Something went wrong please review your data'
    end
  end

  def auction_product_params
    params.require(:auction_product).permit(:value)
  end
end
