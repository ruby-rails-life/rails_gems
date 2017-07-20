class BookController < ApplicationController
  def index
  	@books = Book.all
  	@books_published = Book.publised
  end
end
