class Cigar
    extend Findable::ClassMethods
    attr_accessor :name, :brand, :length, :gauge, :country, :filler, :wrapper, :color, :strength, :id
    @@all = []

    def initialize(name, brand, length, gauge, country, filler, wrapper, color, strength, id)
        @name = name
        @brand = brand
        @length = length
        @gauge = gauge
        @country = country
        @filler = filler
        @wrapper = wrapper
        @color = color
        @strength = strength
        @id = id
        assign_brand(brand)
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_brand(brand)
        @brand = Brand.get_by_name(brand)
        @brand.cigars << self
    end

end