require 'rails_helper'

RSpec.describe Team, type: :model  do
  context 'should at create Team from blank field' do
    it 'should be create' do
      obj = Team.new
      expect(obj.valid?).to eq(false)
    end
  end
end

RSpec.describe Game, type: :model  do
  context 'should at create Game from blank field' do
    it 'should be create' do
      obj = Game.new
      expect(obj.valid?).to eq(false)
    end
  end
end

RSpec.describe Player, type: :model  do
  context 'should at create Player from blank field' do
    it 'should be create' do
      obj = Player.new
      expect(obj.valid?).to eq(false)
    end
  end
end

RSpec.describe JournalPlayer, type: :model  do
  context 'should at create JournalPlayer from blank field' do
    it 'should be create' do
      obj = JournalPlayer.new
      expect(obj.valid?).to eq(false)
    end
  end
end

RSpec.describe Country, type: :model  do
  context 'should at create Country from blank field' do
    it 'should be create' do
      obj = Country.new
      expect(obj.valid?).to eq(true)
    end
  end
end

RSpec.describe Region, type: :model  do
  context 'should at create Country from blank field' do
    it 'should be create' do
      obj = Region.new
      expect(obj.valid?).to eq(true)
    end
  end
end

RSpec.describe JournalPlayer, type: :model  do
  context 'should at create JournalPlayer from blank field' do
    it 'should be create' do
      obj = JournalPlayer.new
      expect(obj.valid?).to eq(false)
    end
  end
end