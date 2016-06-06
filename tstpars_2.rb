require "net/http"
require "uri"

uri = URI('http://bast.pro/ok.html')
res = Net::HTTP.get_response(uri)
respond = res.code

if respond.to_i == 200||201
  puts res.code
  puts res.message
  return exit code = 1
else
	puts res.code
	puts res.message
	return exit code = 0
end


#puts res.message    
