class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :destination
      t.date :start_date
      t.date :end_date
      t.string :name

      t.timestamps
    end
  end
end
