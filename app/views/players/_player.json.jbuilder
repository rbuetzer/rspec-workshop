json.extract! player, :id, :name, :games_played, :games_won, :fouls_commited, :created_at, :updated_at
json.url player_url(player, format: :json)
