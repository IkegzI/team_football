# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Region.create(title: 'Иркутская область')
Region.create(title: 'Красноярский край')
Country.create(title: 'РФ')
Position.create(title: 'ЛН')
Position.create(title: 'ПН')
Position.create(title: 'ЦН')
Position.create(title: 'ЛЗ')
Position.create(title: 'ПЗ')
Position.create(title: 'ЦЗ')
Position.create(title: 'ЛП')
Position.create(title: 'ПП')
Position.create(title: 'ЦП')
TypeAction.create(title: 'пробежал 10+ км')
TypeAction.create(title: 'сделал 70+ % точных передач')
TypeAction.create(title: 'Забил гол')
TypeAction.create(title: 'Критичкая ошибкал')
4.times do |i|
  Team.create(title: (1..rand(2..6)).to_a.map { |i| "#{['б', 'в', 'ж', 'з', 'к', 'л', 'м', 'н', 'с', 'т', 'р', 'ф', 'х', 'ш', 'щ'][rand(0..14)]}#{['а', 'е', 'ё', 'и', 'у', 'э', 'ы', 'ю', 'я'][rand(0..8)]}" }.join.capitalize,
              region: Region.all.sample,
              country: Country.all.sample,
              active: [true, false].sample)
end
10.times do |i|
  Player.create(firstname: (1..rand(2..6)).to_a.map { |i| "#{['б', 'в', 'ж', 'з', 'к', 'л', 'м', 'н', 'с', 'т', 'р', 'ф', 'х', 'ш', 'щ'][rand(0..14)]}#{['а', 'е', 'ё', 'и', 'у', 'э', 'ы', 'ю', 'я'][rand(0..8)]}" }.join.capitalize,
                lastname: (1..rand(2..6)).to_a.map { |i| "#{['б', 'в', 'ж', 'з', 'к', 'л', 'м', 'н', 'с', 'т', 'р', 'ф', 'х', 'ш', 'щ'][rand(0..14)]}#{['а', 'е', 'ё', 'и', 'у', 'э', 'ы', 'ю', 'я'][rand(0..8)]}" }.join.capitalize,
                birthday: Date.parse("2020-#{rand(1..12)}-#{rand(1..28)}"),
                number: rand(0..99),
                position: Position.all.sample,
                region: Region.all.sample,
                country: Country.all.sample,
                team: Team.all.sample,
                start_play: Date.parse("2020-#{rand(1..12)}-#{rand(1..28)}"),
                end_play: Date.parse("2020-#{rand(1..12)}-#{rand(1..28)}"),
                active: true)
end

10.times do |i|
  owners_id = Team.all.sample.id
  loop do
    visitors_id = Team.all.sample.id
    break if visitors_id != owners_id
  end
  Game.create(owners_id: Team.all.sample.id,
              visitors_id: Team.all.sample.id,
              date: Date.parse("2020-#{rand(1..12)}-#{rand(1..28)}"),
              amount_owner: rand(0..10),
              amount_visitors: rand(0..10),
              result: '',
              country: Country.all.sample,
              region: Region.all.sample,
              active: '')
end

20.times do |i|
  param = {
      player_id: Player.all.sample.id,
      team_id: Team.all.sample.id,
      game_id: Game.all.sample.id,
      type_action_id: TypeAction.all.sample.id,
      result: true}
  if JournalPlayer.find_by(param).nil?
    JournalPlayer.create(param)
  end
end
