require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
#   get '/goodbye/:name, a dynamic route that returns "Goodbye, (person's name).", 
#   a string. For example, navigating to localhost:9393/goodbye/jerome should display Goodbye, jerome.

# A dynamic route starting with /multiply that accepts two params (num1 and num2) and 
# returns the product of the two numbers.
  get "/goodbye/:name" do
    "Goodbye, #{params[:name]}."
  end

  get "/multiply/:num1/:num2" do 
    "#{params[:num1].to_i * params[:num2].to_i}"
  end

end