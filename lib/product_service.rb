class ProductService

  #
  # Extremely basic implementation to take a XML request shown per example and respond with a product set.
  #
  # EXAMPLE request
  #
  # <request>
  #   <personaldetail>
  #     <name>foo</name>
  #     <surname>bar</surname>
  #     <dob>1970-01-01</dob>
  #     <email>Error! Hyperlink reference not valid.
  #   </personaldetail>
  #   <residentialaddress>
  #     <line1>somewhere</line1>
  #     <line2>someplace</line2>
  #     <line3></line3>
  #     <line4></line4>
  #     <postcode>ab12c34</postcode>
  #   </residentialaddress>
  #   <postaladdress>
  #     <line1>somewhere</line1>
  #     <line2>someplace</line2>
  #     <line3></line3>
  #     <line4></line4>
  #     <postcode>ab12c34</postcode>
  #   </postaladdress>
  # </request>
  #

  @@response1 = %[
    <?xml version="1.0" encoding="UTF-8"?>
    <products>
    <product>
    <name>A</name>
    <price>10</price>
    </product>
    <product>
    <name>B</name>
    <price>20</price>
    </product>
    </products>
  ]

  @@response2 = %[
    <?xml version="1.0" encoding="UTF-8"?>
    <products>
    <product>
    <name>C</name>
    <price>30</price>
    </product>
    <product>
    <name>D</name>
    <price>40</price>
    </product>
    </products>
  ]

  def self.get(request)
    Rails.logger.debug("Got Request: " + request)
  
    response = if rand(2) > 0
      @@response1
    else
      @@response2
    end

    Rails.logger.debug("Responding with: " + response)
    response
  end
end
