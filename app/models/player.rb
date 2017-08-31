class Player < ApplicationRecord
  def ratio
    return 0 if games_played == 0
    games_won.to_f / games_played
  end
end
