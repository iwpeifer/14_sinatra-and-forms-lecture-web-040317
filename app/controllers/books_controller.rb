class BooksController < ApplicationController

  get '/books' do
    @books = Book.all
    erb :"books/index.html"
  end

  get '/books/new' do
    erb :"books/new.html"
  end

  post '/books' do
     title   = params['title']
     snippet = params['snippet']
     Book.create(title: title, snippet: snippet)
     redirect to('/books')
  end

  get '/books/:id' do
    @book = Book.find(params["id"])
    erb(:"books/show.html")
  end




end
