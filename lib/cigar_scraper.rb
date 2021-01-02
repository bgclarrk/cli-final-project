

class CigarScraper

    def new_from_link(link)
        html = open(link)
        doc = Nokogiri::HTML(html)

        cigar_data = doc.css(".bbstable .messagecellbody")

        cigars = []
        i = 1

        while i < cigars_data.css("a").count
            name = cigars_data.css("a")[1].text
            brand = cigars_data.css("td")[2].text
            length = cigars_data.css("td")[3].text
            gauge = cigars_data.css("td")[4].text
            country = cigars_data.css("td")[5].text
            filler = cigars_data.css("td")[6].text
            wrapper = cigars_data.css("td")[7].text
            color = cigars_data.css("td")[8].text
            strength = cigars_data.css("td")[9].text
            id = i
            Cigar.new(name, brand, length, gauge, country, filler, wrapper, color, strength)
            cigars_hash = {
                name: name,
                brand: brand,
                length: length,
                gauge: gauge,
                country: country,
                filler: filler,
                wrapper: wrapper,
                color: color,
                strength: strength,
                id: i
            }
            cigars << cigars_hash
            i += 1
        end
        cigars
    end

end