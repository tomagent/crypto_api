require "httparty"

url = "https://api.coingecko.com/api/v3/coins/list?include_platform=true"

response = HTTParty.get(url)

begin
    response = response.parsed_response
    p "The id of the first crypto in the list is #{response[0]["id"]} and it's symbol is #{response[0]["symbol"]}"
rescue
    p "There's a problem man"
end