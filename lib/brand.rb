

class Brand
    attr_accessor :name, :link, :brand_id, :cigars
    @@all = []

    def initialize(name, link, brand_id)
        @cigars = []
        @name = name
        @link = link
        @brand_id = brand_id
        @@all << self
    end

    def self.all
        @@all
    end

    def self.get_brand_by_id(id)
        @@all.find { | brand | brand.brand_id == id }
    end

    def self.get_brand_by_name(name)
        @@all.find { | brand | brand.name == name }
    end

    def self.cigar_total_by_brand(id)
        brand = self.get_brand_by_id(id)
        Cigar.all.count { |cigar| cigar.brand == brand }
        # binding.pry
    end

end