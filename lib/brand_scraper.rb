class BrandScraper

    def new_from_url(page_number = 1)
        @page_number = page_number
        html = open("http://www.cigargeeks.com/cigardb/default.asp?action=&page=#{@page_number}")
        doc = Nokogiri::HTML(html)

        brands_data = doc.css(".bbstable .messagecellbody")

        brands = []
        i = 1

        while i < brands_data.css("a").count
            name = brands_data.css("a")[i].text
            link = "http://www.cigargeeks.com/cigardb/" + brands_data.css("a")[i]["href"]
            brand_id = i
            Brand.new(name, link, brand_id)
            brands_hash = {
                name: name,
                link: link,
                brand_id: i
            }
            brands << brands_hash
            i += 1
        end
        brands
    end

end