require "net/http"
require "uri"

uri = URI('http://bast.pro/ok1.html')
res = Net::HTTP.get_response(uri)

if res.code.to_i != (200||201)
  abort res.code + " " + res.message
end
