

class Brand
    attr_accessor :name
    @@all = []

    def intialize(name)
        @name = name
    end

    def save
        @@all << self
    end

    def all
        @@all
    end

end