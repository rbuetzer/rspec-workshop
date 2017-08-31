require 'rails_helper'

RSpec.describe BestPlayerService do
  context 'when there are multiple players' do
    let!(:player1) { create(:player, games_played: 10, games_won: 2) }
    let!(:player2) { create(:player, games_played: 7, games_won: 6) }
    let!(:player3) { create(:player, games_played: 800, games_won: 200) }

    it 'returns a player' do
      expect(BestPlayerService.new.best_player).to be_a Player
    end

    it 'returns the best player' do
      expect(BestPlayerService.new.best_player).to eq player2
    end

    context 'when there is a perfect player' do
      let!(:player4) { create(:player, games_played: 10, games_won: 10) }

      it 'returns the perfect player' do
        expect(BestPlayerService.new.best_player).to eq player4
      end
    end
  end
end
