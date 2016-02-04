class AddFieldsToNumber < ActiveRecord::Migration
  def change
    add_column :numbers, :ticket_number, :string
    add_column :numbers, :amount, :string
    add_reference :numbers, :draw, index: true, foreign_key: true
  end
end
