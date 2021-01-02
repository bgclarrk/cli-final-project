

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

    def self.get_brand_by_id(id)
        @@all.find {| brand | brand.brand_id == id}
    end

end
# first = Brand.new("One", "google.com", 4)
# second = Brand.new("Two", "bing.com", 1)