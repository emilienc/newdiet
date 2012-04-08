Given /^the user visits the signout page$/ do
  visit signout_path,:method=>delete
end

Given /^a user visits the signin page$/ do
  visit signin_path
end

Given /^a user visits the signup page$/ do
  visit signup_path
end

When /^he submits invalid signup information$/ do
  click_button "Enregistrer"
end


When /^he submits invalid signin information$/ do
  click_button "Connexion"
end

Then /^he should see an error message$/ do
  page.should have_selector('div.alert.alert-error')
end

Then /^he should see a welcome message for signup$/ do
  page.should have_selector('div.alert.alert-notice')
end


Given /^the user has an account$/ do
  @user = User.create(email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
end

When /^the user submits valid signin information$/ do
  visit signin_path
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password 
  click_button "Connexion"
end

When /^the user submits valid signup information$/ do
  visit signup_path
  fill_in 'user_email',    with: "new"
  fill_in 'user_password', with: "new"
  fill_in 'user_password_confirmation', with: "new"
  click_button "Enregistrer"
end

Then /^he should see his profile page$/ do
  page.should have_selector('title', text: @user.email)
end

Then /^he should see a signout link$/ do
  page.should have_link('Quitter', href: signout_path)
end