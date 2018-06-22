require 'rails_helper'

	describe UsersController, type: :controller do
		let(:user) { User.create!(email: "test@yahoo.com", password: "222test") }
		let(:user2) { User.create!(email: "test@hotmail.com", password: "555test") }

		describe 'GET #show' do
  			context 'when a user is logged in' do
  				before do
  					sign_in user
  				end
  				it 'loads correct user details' do 
  					get :show, params: { id: user.id }
  					expect(response).to be_ok
  					expect(assigns(:user)).to eq user
  				end
  				it 'can not access the show page of the second user' do 
  					get :show, params: { id: user.id }
  					expect(response).to redirect_to(root_path)
  					expect(response).to have_http_status(302)
  				end
  			end

 			context 'when a user is not logged in' do
 				it 'redirects to login' do
         			get :show, params: { id: user.id }
         			expect(response).to redirect_to(new_user_session_path)
       			end
 		 	end
		end

	end



