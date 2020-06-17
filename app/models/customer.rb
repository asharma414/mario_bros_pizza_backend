class Customer < ApplicationRecord
    has_many :orders
    has_many :pizzas, through: :orders

    def geocode_address
        geo_url = "https://api.mapbox.com/geocoding/v5/mapbox.places/"
        customer_address = self.address
        geo_json = ".json?access_token="
        
        big_url = geo_url + customer_address + geo_json + TOKEN
        big_url.gsub!(' ','%20') #RestClient is not as smart as Google Chrome
        response = RestClient.get(big_url)
        json = JSON.parse(response)
        json["features"][0]["geometry"]["coordinates"]
        # data.features[0].geometry.coordinates
    end

    def cycle_time_from_mario_pizza
        customer_geocode = self.geocode_address
        cust_string = customer_geocode.join(',')
        
        mario_geocode = [-77.036728, 38.900475]
        mario_string = mario_geocode.join(',')

        route_string = mario_string + ';' + cust_string
        token_string = '?geometries=geojson&access_token='

        cycle_url = "https://api.mapbox.com/directions/v5/mapbox/cycling/"

        big_url = cycle_url + route_string + token_string + TOKEN

        response = RestClient.get(big_url)
        json = JSON.parse(response)
        seconds = json["routes"][0]["duration"]
        seconds / 60.0
    end

end

