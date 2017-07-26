class BookController < ApplicationController
  include Common
  
  def index
    @books = Book.all
    @books_published = Book.publised
    @books_order = books
    I18n.backend.store_translations :en, thanks: 'Thanks %{name}!'
    I18n.backend.store_translations :ja, thanks: 'ありがとう %{name}!'
    I18n.backend.store_translations :en, inbox: {one: 'one message', other: '%{count} messages'}
    I18n.backend.store_translations :ja, inbox: {one: '１件メッセージ', other: '%{count}件メッセージ'}
    # @no_exist = I18n.t :no_exist
    add_breadcrumb I18n.t 'breadcrumbs.book', book_path
  end

  def bulkinsert
    books = []
    cnt = Book.count
    2.times do |i|
      books << Book.new(:title => "book_#{cnt + i}")
    end
    Book.import books
    redirect_to :action=> "index"
  end

end
