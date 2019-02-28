require "sinatra"


get("/apple") do
	"<h1>Here's a juicy apple!</h1>"
end

get("/banana") do
	"<h1>Here is a ripe banana!</h1>"
end

get("/carrot") do
	"<h1>Here's a crunchy!</h1>"
end