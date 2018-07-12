FactoryBot.define do
	sequence(:email) { |n| "user#{n}@beach.com" }

  	factory :user do
      email
  		password "Football"
    	first_name "Christiano"
    	last_name "Ronaldo"
    	admin false
      trait :admin do
        admin true
      end
  	end
end