

class CigarScraper

    def new_from_link(link, brand)
        html = open(link)
        doc = Nokogiri::HTML(html)

        cigars_data = doc.css(".bbstable tr")
        cigar_count = doc.css(".bbstable tr").count - 1

        cigars = []
        i = 1
        ii = 10

        while i < cigar_count
            name = cigars_data.css("td")[ii].text
            brand = brand
            length = cigars_data.css("td")[ii + 1].text
            gauge = cigars_data.css("td")[ii + 2].text
            country = cigars_data.css("td")[ii + 3].text
            filler = cigars_data.css("td")[ii + 4].text
            wrapper = cigars_data.css("td")[ii + 5].text
            color = cigars_data.css("td")[ii + 6].text
            strength = cigars_data.css("td")[ii + 7].text
            id = i
            Cigar.new(name, brand, length, gauge, country, filler, wrapper, color, strength, id)
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
            ii += 9
        end
        cigars
    end

end