require 'rails_helper'

describe Product do

	context "when the product has comments" do
		let(:product) { Product.create!(name: "iCare Earrings") }
		let(:user) { User.create!(first_name: "Tester", email: "test@yahoo.com", password: "222test") }
	
		before do
  			product.comments.create!(rating: 1, user: user, body: "Awful earrings!")
  			product.comments.create!(rating: 3, user: user, body: "Ok just fine!")
  			product.comments.create!(rating: 5, user: user, body: "Great earrings!")
		end

		it "returns the average rating of all comments" do
			expect(product.average_rating).to eq 3
		end	

		it "is not valid without a name" do	
			expect(Product.new(description: "Nice Anklet")).not_to be_valid
		end



	end		
end
