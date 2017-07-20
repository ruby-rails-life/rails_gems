class BookController < ApplicationController
  include Common
  
  def index
  	@books = Book.all
  	@books_published = Book.publised
    @books_order = books
  end
end
