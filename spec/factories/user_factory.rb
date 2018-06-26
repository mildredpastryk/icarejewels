FactoryBot.define do
	sequence(:email) { |n| "user#{n}@hotmail.com" }

  	factory :user do
  		email
  		password "Football"
    	first_name "Toni"
    	last_name "Kroos"
    	admin false
  	end

  	factory :admin, class: User do
    	email
    	password "Number7"
    	admin true
    	first_name "Cristiano"
    	last_name "Ronaldo"
  end

end