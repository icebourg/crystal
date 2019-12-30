require "kemal"

get "/" do
  "Slightly fancier hello world via web server"
end

get "/new_page" do
  "Howdy"
end

Kemal.run
