describe Player do
  describe '#player_name' do
    it "should return the player's name" do
      player_1 = Player.new("Charlotte")
      expect(player_1.name).to eq("Charlotte")
    end
  end
end