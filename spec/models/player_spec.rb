require 'rails_helper'

RSpec.describe Player do
  describe 'ratio' do
    let(:games_played) { 4 }
    let(:games_won) { 3 }
    subject { described_class.new(games_won: games_won, games_played: games_played).ratio }

    it { is_expected.to be 0.75 }

    context 'with other numbers' do
      let(:games_played) { 50 }
      let(:games_won) { 30 }

      it { is_expected.to be 0.6 }
    end

    context 'when games_played is 0' do
      let(:games_played) { 0 }
      let(:games_won) { 0 }

      it { is_expected.to be 0 }
    end

    context 'when games_played equals games_won' do
      let(:games_played) { 13 }
      let(:games_won) { 13 }

      it { is_expected.to be 1.0 }
    end
  end
end
