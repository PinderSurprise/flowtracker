# accidentally spelled Flow as Flowk when creating this model. Be on the lookout for other Flowks

class CreateFlow < ActiveRecord::Migration
  def change
    create_table :flow do |t|
      t.string :stationID
      t.string :name
      t.decimal :waterlevel

      t.timestamps null: false
    end
  end
end
