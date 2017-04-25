class ApplicationController

  def call(env)
    request = Rack::Request.new(env)
    if request.path == '/'
      render "index.html.erb"
    elsif request.params['id'] && request.path == '/books'
      @book = Book.find(request.params["id"])
      render("books/show.html.erb")
    elsif request.path == '/books'
      @books = Book.all
      render "books/index.html.erb"
    else
      response = Rack::Response.new
      response.status = '404'
      response.write 'Not found'
      response.finish
    end
  end

  private

  def render(file_path)
    response = Rack::Response.new
    template = File.read("./app/views/#{file_path}")
    body = ERB.new(template).result(binding)
    response.write(body)
    response.finish
  end
end
