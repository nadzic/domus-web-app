# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
simulation_entries = [
  { time: "05:44:42", position_x: 12.33, position_y: 12.2, position_z: 12.2, rotation_x: 34.2, rotation_y: 34.2, rotation_z: 34.2, rotation_w: 34.2, speed: 12.1, steering_wheel_position: 321.21, gas_pedal_position: 231.2, brake_pedal_position: 4.23, engine_running: true, simulation_id: 1 },
  { time: "08:44:42", position_x: 34.33, position_y: 142.2, position_z: 34.2, rotation_x: 34.2, rotation_y: 34.2, rotation_z: 34.2, rotation_w: 34.2, speed: 12.1, steering_wheel_position: 321.21, gas_pedal_position: 23.2, brake_pedal_position: 14.23, engine_running: true, simulation_id: 2 },
  { time: "04:44:42", position_x: 456.33, position_y: 124.2, position_z: 6543.2, rotation_x: 34.2, rotation_y: 34.2, rotation_z: 34.2, rotation_w: 34.2, speed: 12.1, steering_wheel_position: 321.21, gas_pedal_position: 21.2, brake_pedal_position: 34.23, engine_running: true, simulation_id: 3 },
  { time: "03:44:42", position_x: 342.33, position_y: 234.2, position_z: 452.2, rotation_x: 34.2, rotation_y: 34.2, rotation_z: 34.2, rotation_w: 34.2, speed: 15.1, steering_wheel_position: 321.21, gas_pedal_position: 331.2, brake_pedal_position: 54.23, engine_running: true, simulation_id: 4 },
  { time: "03:44:42", position_x: 342.33, position_y: 234.2, position_z: 452.2, rotation_x: 34.2, rotation_y: 34.2, rotation_z: 34.2, rotation_w: 34.2, speed: 16.1, steering_wheel_position: 321.21, gas_pedal_position: 431.2, brake_pedal_position: 64.23, engine_running: true, simulation_id: 4 },
  { time: "03:44:42", position_x: 342.33, position_y: 234.2, position_z: 452.2, rotation_x: 34.2, rotation_y: 34.2, rotation_z: 34.2, rotation_w: 34.2, speed: 18.1, steering_wheel_position: 421.21, gas_pedal_position: 531.2, brake_pedal_position: 74.23, engine_running: true, simulation_id: 4 },
  { time: "03:44:42", position_x: 342.33, position_y: 234.2, position_z: 452.2, rotation_x: 34.2, rotation_y: 34.2, rotation_z: 34.2, rotation_w: 34.2, speed: 19.1, steering_wheel_position: 621.21, gas_pedal_position: 731.2, brake_pedal_position: 84.23, engine_running: true, simulation_id: 4 },
  { time: "03:44:42", position_x: 342.33, position_y: 234.2, position_z: 452.2, rotation_x: 34.2, rotation_y: 34.2, rotation_z: 34.2, rotation_w: 34.2, speed: 20.1, steering_wheel_position: 721.21, gas_pedal_position: 831.2, brake_pedal_position: 94.23, engine_running: true, simulation_id: 4 },
  { time: "03:44:42", position_x: 342.33, position_y: 234.2, position_z: 452.2, rotation_x: 34.2, rotation_y: 34.2, rotation_z: 34.2, rotation_w: 34.2, speed: 21.1, steering_wheel_position: 421.21, gas_pedal_position: 931.2, brake_pedal_position: 104.23, engine_running: true, simulation_id: 4 },
]

simulation_entries.each do |simulation_entry|
    SimulationEntry.create simulation_entry
 end