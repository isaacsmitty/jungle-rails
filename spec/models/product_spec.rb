require 'rails_helper'

  RSpec.describe Product, type: :model do
    describe "Validations" do
      it 'should be valid if name, price, quant and cat exist' do
        @cat1 = Category.create(:name => 'Apparel')
        @product = @cat1.products.new
        @product.name = 'Thing'
        @product.price = 300
        @product.quantity = 30
        expect(@product).to be_valid
      end

      it 'should not be valid if name in missing' do
        @cat1 = Category.create(:name => 'Apparel')
        @product = @cat1.products.new
        @product.name = ''
        @product.price = 300
        @product.quantity = 30
        expect(@product).to_not be_valid
      end

      it 'should not be valid if price in missing' do
        @cat1 = Category.create(:name => 'Apparel')
        @product = @cat1.products.new
        @product.name = 'thing'
        @product.price
        @product.quantity = 30
        expect(@product).to_not be_valid
      end

      it 'should not be valid if quantity in missing' do
        @cat1 = Category.create(:name => 'Apparel')
        @product = @cat1.products.new
        @product.name = 'thing'
        @product.price = 300
        @product.quantity
        expect(@product).to_not be_valid
      end

      it 'should not be valid if category in missing' do
        @product = Product.new
        @product.name = 'thing'
        @product.price = 300
        @product.quantity = 30
        expect(@product).to_not be_valid
      end
    end
  end
