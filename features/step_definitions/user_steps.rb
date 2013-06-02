Given /^I am logged in as an administrator$/ do
  password = 'passw0rd'
  user = Factory :admin_user, :password => password
  visit login_path
  fill_in 'login', :with => user.login
  fill_in 'password', :with => password
  click_button 'LOGIN'
end