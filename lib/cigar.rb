

class Cigar
    attr_accessor :name, :brand, :length, :gauge, :country, :filler, :wrapper, :color, :strength, :cigar_id
    @@all = []

    def initialize(name, brand, length, gauge, country, filler, wrapper, color, strength, cigar_id)
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
        assign_brand(brand)
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_brand(brand)
        brand = Brand.get_brand_by_name(brand)
        brand.cigars << self
    end

    def self.get_cigar_by_id(id)
        @@all.find { | cigar | cigar.cigar_id == id }
    end

end