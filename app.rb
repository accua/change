require("sinatra")
require("sinatra/reloader")
require('./lib/change')
also_reload('lib/**/*.rb')


get("/") do
  erb(:index)
end

get("/change") do
  price = params.fetch("price")
  cash = params.fetch("cash")
  @your_change = (price.to_f).disp_change(cash.to_f)
  erb(:change)
end
