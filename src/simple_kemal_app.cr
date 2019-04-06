#require "./uk_national_lottery/*"
require "kemal"

get "/" do
  "My first Kemal app is alive!"
end

Kemal.run
