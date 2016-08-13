class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t| # :flow
      t.string :ticker # :stationID
      t.string :name # :name
      t.decimal :last_price # :waterlevel

      t.timestamps null: false
    end
  end
end
