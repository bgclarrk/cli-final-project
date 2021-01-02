

class Cigar
    attr_accessor :name, :brand, :length, :gauge, :country, :filler, :wrapper, :color, :strength
    @@all = []

    def initialize(name)
        @name = name
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

end