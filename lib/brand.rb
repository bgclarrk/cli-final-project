

class Brand
    attr_accessor :name, :link, :brand_id
    @@all = []

    def initialize(name, link, brand_id)
        @name = name
        @link = link
        @brand_id = brand_id
        @@all << self
    end

    def self.all
        @@all
    end

end