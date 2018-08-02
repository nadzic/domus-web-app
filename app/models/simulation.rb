class Simulation < ApplicationRecord
    has_many :simulation_entries
    belongs_to :driver
    belongs_to :map
    belongs_to :measurment
end
