

class CLI
    attr_accessor :page_number, :brand_name, :object

    def call
        puts "Welcome to your source for all cigar brands and cigars!"
        puts ""
        @object = BrandScraper.new
        puts "To see a list of cigar brands and their cigars, type 'Brands'."
        puts "To exit the program, type 'Exit'."
        puts ""
        menu
    end

    def menu
        @user_input = gets.strip.downcase
        
        if @user_input == "brands"
            get_page
        elsif @user_input == "cigars"
            get_brand
        elsif @user_input == "exit"
            exit
        else
            puts "Invalid input: Please try again."
            menu
        end
    end

    def get_page
        loop do
            puts "Please choose a page number between 1 and 70:"
            @page_number = gets.chomp.to_i
            break if @page_number.between?(1, 70)
            puts "Invalid input:  Please choose a page number between 1 and 70."
        end
        @object.new_from_url(@page_number)
        display_brands
    end
    
    def display_brands
        puts ""
        puts "Thank you! Here are the results for page #{@page_number}:"
        puts ""
        Brand.all.each do | brand |
           puts "#{brand.brand_id}. #{brand.name}"
        end
        puts ""
        puts "To see a different page, type 'Brands' again."
        puts "To see a brand's cigars, type 'Cigars'."
        puts "To exit the program, type 'Exit'."
        menu
    end

    def get_brand
        loop do
            puts "To see the cigars for a specific brand, type the number associated with that brand:"
            @brand_id = gets.chomp.to_i
            break if @brand_id.between?(1, 50)
            puts "Invalid input:  Please choose a brand number between 1 and 50."
        end
        display_cigars
    end

    def display_cigars
        puts ""
        puts "Thank you! Here are your results:"
        puts ""

        puts ""
        puts "To return to brands, type 'Brands' again."
        puts "To exit the program, type 'Exit'."
        menu
    end

    def exit
        puts "Thank you for stopping by!"
    end

end