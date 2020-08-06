require 'pry'

class Building
    #The name and number of tenants should be readable and writeable
    attr_accessor :name, :tenants
    #The address should be readable
    attr_reader :address

    #The number of floors should not be readable or writeable

    @@all = []

#Initializes with a name, address, number of floors, and number of tenants
    def initialize(name, address, floors, tenants)
        @name = name
        @address = address
        @floors = floors
        @tenants = tenants
        @@all << self # The class should keep track of all buildings that are created
    end

    def self.all
        @@all
    end

    #The class should tell the average number of tenants in a building
    
    def self.tenants_per_building
        all.map {|building| building.tenants }
    end

    def self.average_tenants_of_buildings
        tenants_list = self.tenants_per_building
        tenants_list.reduce(:+) / tenants_list.length
    end

    #A building should have a placard method that returns the name and address of the building

    def placard
        "#{@name}, #{@address}"
    end

    #A building should have a method returns the average number of tenants per floor

    def average_tenants_per_floor
        (@tenants.to_f / @floors.to_f).round(2)
    end

end

#adding buildings as variables and to the class

sears_tower = Building.new("Sear's Tower", "Chicago, IL", 110, 1560)
empire_state = Building.new("Empire State Building", "New York, New York", 102, 1200) 
white_house = Building.new("White House", "Washington, DC", 4, 4)
big_ben = Building.new("Big Ben", "London, England", 11, 250)



binding.pry