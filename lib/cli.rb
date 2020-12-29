

class CLI
    attr_accessor :page_number

    def call
        puts "Welcome to your source for all cigar brands and cigars!"
        menu
    end

    def menu
        puts "To see a list of cigar brands and their cigars, type 'Brands'."
        puts "To exit the program, type 'Exit'."

        @user_input = gets.strip.downcase
        
        if @user_input == "brands"
            get_page
        elsif @user_input == "exit"
            puts "Thank you for stopping by!"
        else
            puts "Invalid input:"
            menu
        end
    end

    def get_page
        loop do
            puts "Please choose a page number between 1 and 70"
            @page_number = gets.chomp.to_i
            break if @page_number.between?(1, 70)
            puts "Invalid input:  Please choose a page number between 1 and 70"
        end
        BrandScraper.new(@page_number)
    end
    
end