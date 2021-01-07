class Brand
    extend Findable::ClassMethods
    attr_accessor :name, :link, :id, :cigars
    @@all = []

    def initialize(name, link, id)
        @cigars = []
        @name = name
        @link = link
        @id = id
        @@all << self
    end

    def self.all
        @@all
    end

    def self.cigar_total_by_brand(id)
        brand = self.get_by_id(id)
        Cigar.all.count { |cigar| cigar.brand == brand }
    end

end