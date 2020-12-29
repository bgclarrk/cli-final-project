

class CLI
    attr_accessor :page_number

    def initialize
        brand_scraper.new
        @page_number = 0
    end

    def call
        puts "Welcome to your source for all cigar brands and cigars!"
        self.display
    end

    def display
        i = 0
        while i < brands.count
            puts brands[id]
            i += 1
        end
    end

    def get_page
        loop do
            puts "Please choose a page number between 1 and 70"
            @page_number = gets.chomp.to_i
            break if page_number.between?(1, 70)
            puts "Invalid input:  Please choose a page number between 1 and 70"
        end
        page_number
    end

end