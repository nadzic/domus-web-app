class MainController < ApplicationController
    def index
        @simulation_entries = SimulationEntry.all
    end
end
