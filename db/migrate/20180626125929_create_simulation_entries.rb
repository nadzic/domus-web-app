class CreateSimulationEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :simulation_entries do |t|
      t.integer :time
      t.decimal :position_x
      t.decimal :position_y
      t.decimal :position_z
      t.decimal :rotation_x
      t.decimal :rotation_y
      t.decimal :rotation_z
      t.decimal :rotation_w
      t.float :speed
      t.decimal :steering_wheel_position
      t.decimal :gas_pedal_position
      t.decimal :brake_pedal_position
      t.boolean :engine_running
      t.references :simulation, foreign_key: true

      t.timestamps
    end
  end
end
