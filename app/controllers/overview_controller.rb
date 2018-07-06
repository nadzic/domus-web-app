class OverviewController < ApplicationController
    def index
        @simulation_entries = SimulationEntry.all
        read_file()
    end

    def read_file
        File.open(Rails.root + "app/controllers/carData.txt").each_with_index do |line, index|
            if index == 0
                puts "#{line}".rpartition('/').last
            elsif index == 1
                puts "#{line}".split.last
            elsif index == 2
                puts "#{line}".split.last
            elsif index > 3
                puts "----------------------------------------------------------"
                # puts line
                array = line.split(':')
                array.each do |x|
                    puts x
                end
                puts "----------------------------------------------------------"
            end
        end
    end
end
