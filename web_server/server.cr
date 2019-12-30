require "http/server"

s = HTTP::Server.new do |ctx|
    ctx.response.content_type = "text/plain"
    ctx.response.print "This is hello world but in a web server!\n"
end

puts "Now try curling localhost:8080!"
s.listen(8080)
