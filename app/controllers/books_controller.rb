class BooksController < ApplicationController
  before_action :require_user_logged_in!

  def index
    
    if !(params[:sort].present? && (["title","author"].include? params[:sort]))
      params[:sort] = "id"
    end

    if params[:sort] == "title"
      @sort_display = "Title"
    elsif params[:sort] == "author"
      params[:sort] = "author, subtitle, title"
      @sort_display = "Author + Subtitle + Title"
    else
      @sort_display = "ID"
    end

    #@books = Book.all.order(:title)
    @books = Book.all.order(params[:sort])

    respond_to do |format|
      format.html
      format.json {render :json => @books}
    end
  end
  def edit
      @book = Book.find(params[:id])
  end
  def new
    @book = Book.new
  end
  def show
    @book = Book.find(params[:id])
  end
  def create
    if Book.create(book_params)
      redirect_to books_path, notice: "Book created sucesfully."
    else
      render :new, notice: "Something went wrong saving the new book."
    end
  end
  def update
    #raise params.inspect
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book), notice: "Book updated sucesfully."
    else
      render :edit, notice: "Something went wrong editing the book."
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :subtitle, :year, :publisher, :author, :media, :disposal)
  end
end
