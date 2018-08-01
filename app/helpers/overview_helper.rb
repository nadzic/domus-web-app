module OverviewHelper
    def get_map_id(map_name) 
        map_id = Map.find_by(map_name: map_name).id
    end

    def get_driver_id(driver_name)
        driver_id = Driver.find_by(driver_name: driver_name).id 
    end

    def save_map(map_name)
        map = Map.find_by(map_name: map_name)
        if !map 
            map = Map.create(map_name: map_name)
        end
    end
    
    def save_driver(driver_name, password)
        driver = Driver.find_by(driver_name: driver_name) 
        if !driver
            driver = Driver.create(driver_name: driver_name, password: password, password_confirmation: password)
        end
    end

    def fill_db(filename)
        File.open(filename).each_with_index do |line, index|
            # Map
            if index == 0
                @map_name = "#{line}".rpartition('/').last.strip
                save_map(@map_name)
                @map_id = get_map_id(@map_name)
            # Driver name    
            elsif index == 2
                @driver_name = "#{line}".split.last.strip
                save_driver(@driver_name, @driver_name)
                @driver_id = get_driver_id(@driver_name)
            elsif index == 3
                @simulation = Simulation.create(driver_id: @driver_id, map_id: @map_id)
            elsif index > 3
                array = line.split(':')
                array.each_with_index do |entry, j|
                    if j == 0
                        if index == 4
                            @start_time = entry.to_i
                        end
                        @time = entry.to_i - @start_time
                    elsif j == 1
                        @position_x = entry 
                    elsif j == 2
                        @position_y = entry 
                    elsif j == 3
                        @position_z = entry
                    elsif j == 4
                        @rotation_x = entry
                    elsif j == 5
                        @rotation_y = entry
                    elsif j == 6 
                        @rotation_z = entry
                    elsif j == 7
                        @rotation_w = entry
                    elsif j == 8
                        @speed = entry
                    elsif j == 9
                        @steering_wheel_position = entry
                    elsif j == 10
                        @gas_pedal_position = entry
                    elsif j == 11
                        @brake_pedal_position = entry
                    elsif j == 12
                        @engine_running = entry
                    end
                end
            @simulation_entry = SimulationEntry.create(time: @time, position_x: @position_x, position_y: @position_y, position_z: @position_z, rotation_x: @rotation_x, rotation_y: @rotation_y, rotation_z: @rotation_z, rotation_w: @rotation_w, speed: @speed, steering_wheel_position: @steering_wheel_position, gas_pedal_position: @gas_pedal_position, brake_pedal_position: @brake_pedal_position, engine_running: @engine_running, simulation_id: @simulation.id)
            end
        end
    end
end
