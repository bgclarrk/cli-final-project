

class Cigar
    attr_accessor :name, :brand, :length, :gauge, :country, :filler, :wrapper, :color, :strength, :cigar_id
    @@all = []

    def initialize(name, brand, length, gauge, country, filler, wrapper, color, strength, cigar_id)
        @name = name
        @name = name
        @brand = brand
        @length = length
        @gauge = gauge
        @country = country
        @filler = filler
        @wrapper = wrapper
        @color = color
        @strength = strength
        @cigar_id = cigar_id
        @@all << self
    end

    def self.all
        @@all
    end

end