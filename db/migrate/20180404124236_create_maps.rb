class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.text :map_name

      t.timestamps
    end
  end
end
