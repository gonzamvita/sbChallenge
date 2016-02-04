class AddFieldsToGame < ActiveRecord::Migration
  def change
    add_column :games, :game_name, :string
    add_column :games, :minimum_bet, :string
    add_column :games, :hours_before_closing_draw, :string
  end
end
