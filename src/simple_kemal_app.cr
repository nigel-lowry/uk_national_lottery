require "./simple_kemal_app/*"
require "kemal"

get "/" do
  "My first Kemal app is alive!"
end

Kemal.run
