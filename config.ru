require_relative './config/environment'

run ApplicationController.new

def run(app)
  ## listen for any requests that come in
  ## when they do...
  app.call(env)
end
