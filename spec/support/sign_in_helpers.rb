module SignInHelpers

  def signin(user, field)
    visit login_path
    if field == :email
      fill_in 'Email', :with => user.email
    end
    if field == :username
      fill_in 'Email', :with => user.username
    end
    fill_in 'Password', :with => user.password
    click_button 'Log In'
    page.should have_content("#{user.name}")
  end


  def signout
    click_link 'Log out'
    page.should have_content("Sign up")
  end
end

RSpec.configure do |c|
  c.include SignInHelpers, :type => :request
end
