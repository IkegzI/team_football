require 'rspec'
require '../../app/controllers/application_controller'
require '../../app/controllers/team_controller'
describe 'Team' do

  it 'should create team' do
    hash_params = {title: (1..rand(2..6)).to_a.map { |i| "#{['б', 'в', 'ж', 'з', 'к', 'л', 'м', 'н', 'с', 'т', 'р', 'ф', 'х', 'ш', 'щ'][rand(0..14)]}#{['а', 'е', 'ё', 'и', 'у', 'э', 'ы', 'ю', 'я'][rand(0..8)]}" }.join.capitalize,
                   region: Region.all.sample,
                   country: Country.all.sample,
                   active: [true, false].sample}
    team_new =Team.create(hash_params)
    expect(team_new).to eq true
  end

end