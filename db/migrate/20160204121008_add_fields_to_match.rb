class AddFieldsToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :match_1, :string
    add_column :matches, :match_2, :string
    add_column :matches, :match_3, :string
    add_column :matches, :match_4, :string
    add_column :matches, :match_5, :string
    add_column :matches, :match_6, :string
    add_column :matches, :match_7, :string
    add_column :matches, :match_8, :string
    add_column :matches, :match_9, :string
    add_column :matches, :match_10, :string
    add_column :matches, :match_11, :string
    add_column :matches, :match_12, :string
    add_column :matches, :match_13, :string
    add_column :matches, :match_14, :string
    add_column :matches, :match_15, :string
    add_reference :matches, :draw, index: true, foreign_key: true
  end
end
