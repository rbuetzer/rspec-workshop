class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.text :name
      t.integer :games_played
      t.integer :games_won
      t.integer :fouls_commited

      t.timestamps
    end
  end
end
