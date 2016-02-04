class RenamePrizeDistributed < ActiveRecord::Migration
  def change
    rename_column :draws, :price_distributed, :prize_distributed
  end
end
