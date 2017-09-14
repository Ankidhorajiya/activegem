class ProductsController < ApplicationController

	def index
		@product = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.create(product_params)

		if @product.save
			redirect_to @product	
		else
			render 'new'
		end
	end


	def show
		@product = Product.find(params[:id])
	end


	protected

	def product_params
		params.require(:product).permit(:name, :price)
	end

end
