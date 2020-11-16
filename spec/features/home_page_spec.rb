require 'rails_helper'

RSpec.feature "visit on HomePage", type: :feature do
  scenario 'should be home page' do
    visit root_path
    expect(page).to have_text('Последние 10 игр')
  end
end
RSpec.feature "visit on HomePage", type: :feature do
  scenario 'should be home page' do
    visit root_path
    expect(page).to have_text('Узнать, выполнил ли игрок, за последние 10 игр один из показателей')
  end
end
