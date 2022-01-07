class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :watering_frequency
      t.boolean :weekly_or_monthly
      t.date :last_time_watered

      t.timestamps
    end
  end
end
