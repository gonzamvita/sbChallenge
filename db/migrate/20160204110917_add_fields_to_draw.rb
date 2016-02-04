class AddFieldsToDraw < ActiveRecord::Migration
  def change
    add_column :draws, :draw_name, :string
    add_column :draws, :jackpot, :string
    add_column :draws, :price_distributed, :string
    add_column :draws, :date_time, :date
    add_column :draws, :round, :string
    add_column :draws, :priority, :string
    add_column :draws, :available, :boolean
    add_column :draws, :week, :string
    add_column :draws, :tuesday_active, :string
    add_column :draws, :original_draw_date, :string
    add_column :draws, :time_left, :string
  end
end
