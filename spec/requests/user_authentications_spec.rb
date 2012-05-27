require 'spec_helper'

describe 'authentication' do

  context 'anonymous users' do

    it 'can sign up for an account' do
      user = FactoryGirl.build(:barry)

      visit signup_path
      fill_in 'Username', :with => user.username
      fill_in 'Email', :with => user.email
      fill_in 'Name', :with => user.name
      fill_in 'Password', :with => user.password
      fill_in 'Password confirmation', :with => user.password_confirmation
      click_button 'Sign Up'
      page.should have_content(user.name)

    end

    it 'can signin with an email and signout' do

      @user = FactoryGirl.create(:john)  # This creates a user in the database
      signin(@user, :email) # helper cause we do this ALL THE TIME
      signout # helper cause we do this ALL THE TIME

    end
    it 'can signin with an username and signout' do

      @user = FactoryGirl.create(:john)
      signin(@user, :username)
      signout

    end

    it 'can signin and update their profile' do

      new_name = 'Gary Gygax'
      user = FactoryGirl.create(:john) 
      signin(user, :email)
      visit settings_path(user)
      fill_in 'Name', :with => new_name
      fill_in 'Password', :with => user.password
      fill_in 'Password confirmation', :with => user.password_confirmation
      click_button 'Update Profile'
      page.should have_content(new_name)

    end
 end

end
