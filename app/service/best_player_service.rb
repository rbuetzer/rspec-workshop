class BestPlayerService
  def best_player
    Player.all.sort_by(&:ratio).last
  end
end
