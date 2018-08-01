class OverviewController < ApplicationController
    def index
        @simulation_entries = SimulationEntry.all
        filename = Rails.root + "app/controllers/carData.txt"
        fill_db(filename)
    end
end