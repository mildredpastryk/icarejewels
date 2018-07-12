FactoryBot.define do 
    sequence(:name) { |n| "product#{n}" }

  	factory :product, class: Product do 
    	name 
    	description "Platinum with pearl"
    	price 888.00
    	color "silver"
    	image_url "http://fossil.scene7.com/is/image/FossilPartners/JF02397791_main?$aemResponsive_pdp$"
    end

 end