class CLI
    attr_accessor :page_number

    def call
        puts "Welcome to your source for all cigar brands and cigars!"
        puts ""
        @brand_object = BrandScraper.new
        @cigar_object = CigarScraper.new
        puts "To see a list of cigar brands and their cigars, type 'Brands'."
        puts "To exit the program, type 'Exit'."
        puts ""
        menu
    end

    def menu
        @user_input = gets.strip.downcase
        
        if @user_input == "brands"
            get_brands
        elsif @user_input == "cigars"
            get_cigars
        elsif @user_input == "details"
            get_details
        elsif @user_input == "exit"
            exit
        else
            puts "Invalid input: Please try again."
            menu
        end
    end

    def get_brands
        loop do
            puts "Please choose a page number between 1 and 70:"
            @page_number = gets.chomp.to_i
            break if @page_number.between?(1, 70)
            puts "Invalid input:  Please choose a page number between 1 and 70."
        end
        @brand_object.new_from_url(@page_number)
        display_brands
    end
    
    def display_brands
        puts ""
        puts "Thank you! Here are the results for page #{@page_number}:"
        puts ""
        Brand.all.each do | brand |
           puts "#{brand.id}. #{brand.name}"
        end
        puts ""
        puts "To see a different page, type 'Brands' again."
        puts "To see a brand's cigars, type 'Cigars'."
        puts "To exit the program, type 'Exit'."
        menu
    end

    def get_cigars
        loop do
            puts "To see the cigars for a specific brand, type the number associated with that brand:"
            @brand_id = gets.chomp.to_i
            break if @brand_id.between?(1, 50)
            puts "Invalid input:  Please choose a brand number between 1 and 50."
        end
        @cigar_object.new_from_link(Brand.get_by_id(@brand_id).link, Brand.get_by_id(@brand_id).name)
        display_cigars
    end

    def display_cigars
        puts ""
        puts "Thank you! Here are your results:"
        puts ""
        Cigar.all.each do |cigar|
            puts "#{cigar.id}. #{cigar.name}"
        end
        puts ""
        puts "To return to brands, type 'Brands' again."
        puts "To see the details of a cigar type 'Details'."
        puts "To exit the program, type 'Exit'."
        menu
    end

    def get_details
        total = Brand.cigar_total_by_brand(@brand_id).to_i
        loop do
            puts "To see the details for a specific cigar, type the number associated with that cigar:"
            @cigar_id = gets.chomp.to_i
            break if @cigar_id.between?(0, total)
            puts "Invalid input:  Please choose a cigar number between 1 and #{total}."
        end
        display_details
    end

    def display_details
        cigar = Cigar.get_by_id(@cigar_id)
        puts ""
        puts "Here are the details for #{cigar.name}:"
        puts ""
        cigar.brand.empty? ? (puts "Brand: Not Available") : (puts "Brand: #{cigar.brand}")
        cigar.length.empty? ? (puts "Length: Not Available") : (puts "Length: #{cigar.length}")
        cigar.gauge.empty? ? (puts "Gauge: Not Available") : (puts "Gauge: #{cigar.gauge}")
        cigar.country.empty? ? (puts "Country: Not Available") : (puts "Country: #{cigar.country}")
        cigar.filler.empty? ? (puts "Filler: Not Available") : (puts "Filler: #{cigar.filler}")
        cigar.wrapper.empty? ? (puts "Wrapper: Not Available") : (puts "Wrapper: #{cigar.wrapper}")
        cigar.color.empty? ? (puts "Color: Not Available") : (puts "Color: #{cigar.color}")
        cigar.strength.empty? ? (puts "Strength: Not Available") : (puts "Strength: #{cigar.strength}")
        puts ""
        puts "To return to brands, type 'Brands' again."
        puts "To exit the program, type 'Exit'."
        menu
    end

    def exit
        puts "Thank you for stopping by!"
    end

end