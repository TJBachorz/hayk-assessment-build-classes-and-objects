require 'pry'

class Building
    attr_accessor :name, :tenants
    attr_reader :address

    @@all = []

    def initialize(name, address, floors, tenants)
        @name = name
        @address = address
        @floors = floors
        @tenants = tenants
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tenants_per_building(building_name)
        all.find {|building| building.name == building_name}.tenants
    end

    def self.average_tenants_of_buildings
        tenants_list = all.map {|building| building.tenants}
        tenants_list.reduce(:+) / tenants_list.length
        end
    end

    def self.name_and_address
        
    end

end

Building.new("Sear's Tower", "Chicago, IL", 110, 1560)
Building.new("Empire State Building", "New York, New York", 102, 1200) 
Building.new("White House", "Washington, DC", 4, 4)
Building.new("Big Ben", "London, England", 50, 250)



binding.pry
'hi'