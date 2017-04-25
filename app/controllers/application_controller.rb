class ApplicationController < Sinatra::Base

  set :views, 'app/views'

  get '/' do
    erb :'index.html'
  end

  # def self.call(env)
  #
  # end
  # def call(env)
  #   request = Rack::Request.new(env)
  #   if request.path == '/' && request.request_method == 'GET'
  #     render "index.html.erb"
  #   elsif request.params['id'] && request.path == '/books' && request.request_method == 'GET'
  #     @book = Book.find(request.params["id"])
  #     render("books/show.html.erb")
  #   elsif request.path == '/books/new' && request.request_method == 'GET'
  #     render "books/new.html.erb"
  #   elsif request.path == '/books' && request.request_method == 'GET'
  #     @books = Book.all
  #     render "books/index.html.erb"
  #   elsif request.path == '/books' && request.request_method == 'POST'
  #     # figure out what the user typed into the form
  #     title   = request.params['title']
  #     snippet = request.params['snippet']
  #       # use those values to create a new book in our database
  #     Book.create(title: title, snippet: snippet)
  #     # redirect the user back to the books index page
  #     response = Rack::Response.new
  #     response.redirect('/books')
  #     response.finish
  #   else
  #     response = Rack::Response.new
  #     response.status = '404'
  #     response.write 'Not found'
  #     response.finish
  #   end
  # end
  #
  # private
  #
  # def erb(file_path)
  #   response = Rack::Response.new
  #   template = File.read(".#{VIEWS_PATH}/#{file_path}")
  #   body = ERB.new(template).result(binding)
  #   response.write(body)
  #   response.finish
  # end

  # def ians_redirect(path)
  #   response = Rack::Response.new
  #   response.redirect(path)
  #   response.finish
  # end
end
