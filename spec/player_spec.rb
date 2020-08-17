require_relative '../lib/player.rb'

describe Player do

  let (:player) { Player.new('Joe', 'X') }

  describe '#add_pos' do
    it "pushes a position to the player's @position instance variable" do
      player = Player.new('Joe', 'X')
      player.add_pos(3)
      expect(player.position).to eql([3])
    end

    it 'does not leave the @position instance variable as an empty array' do
      player = Player.new('Joe', 'X')
      player.add_pos(3)
      expect(player.position.empty?).not_to eql(true)
    end
  end
end
