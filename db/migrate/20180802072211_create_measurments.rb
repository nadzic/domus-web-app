class CreateMeasurments < ActiveRecord::Migration[5.2]
  def change
    create_table :measurments do |t|
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
