

class BrandScraper(page_number = 1)

    html = open("http://www.cigargeeks.com/cigardb/default.asp?action=&page=#{page_number}")

    doc = Nokogiri::HTML(html)

    brands_data = doc.css(".bbstable .messagecellbody")

    brands = []
    i = 1

    while i < brands_data.css("a").count
        name = brands_data.css("a")[i].text
        link = "http://www.cigargeeks.com/cigardb/" + brands_data.css("a")[i]["href"]
        brands_hash = { name: name, link: link, id: i }
        brands << brands_hash
        i += 1
    end

end