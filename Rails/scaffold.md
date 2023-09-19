# Methods
```ruby
class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
  end

  # DELETE /products/1 or /products/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.fetch(:product, {})
    end
end
```