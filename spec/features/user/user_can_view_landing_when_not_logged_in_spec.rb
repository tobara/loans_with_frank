require 'rails_helper'

feature "View Landing", %{
  As a new customer
  I want load the landing page
  So that I can decide if I want
  to log in or sign_up

  Acceptance Criteria
  [X] I am able to load the landing page
  [X] I am able to see that I can login or sign-up


} do


  scenario "view landing" do
    visit root_path

    expect(page).to have_content('Log in')
    expect(page).to have_content('Sign up')
    expect(page).to_not have_content('Fill Out Application')
  end
end
