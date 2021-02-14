require 'rails_helper'

feature 'testing site routes and content' do

  scenario 'home route' do

    visit root_path
    
    expect(page).to have_css '.home-sweet-home'

  end

  scenario 'about route' do

    visit about_path
    
    expect(page).to have_css '.about'

  end

  scenario 'show-case route' do

    visit products_show_case_path
    
    expect(page).to have_css '.show-case'

  end

end