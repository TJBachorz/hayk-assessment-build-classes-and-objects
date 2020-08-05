require 'pry'

Class Building
    attr_accessor :name, :address, :floors, :tenants

    def initialize(name, address, floors, tenants)
        @name = name
        @address = address
        @floors = floors
        @tenants = tenants
    end
    
    def name=(building_name)
        @name = building_name
    end

    def name
        @name
    end

    def address
        @address
    end

    def tenants=(number_of_tenants)
        @tenants = number_of_tenants
    end

    def tenants
        @tenants
    end

    buildings = [
        Building.new("Sear's Tower", "Chicago, IL", 
    ]

    def average_tenants
    




end