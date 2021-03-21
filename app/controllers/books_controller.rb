class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :move_to_index, except: [:index, :show, :new, :create, :all_index]

  def index
    @books =Book.all.order("created_at DESC").limit(3)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def all_index
    @books =Book.all.order("created_at DESC")
  end

  private

  def book_params
    params.require(:book).permit(:title,:genre_id,:thought,:motivation,:important,:reason,:personal,:act).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in? && current_user.id == @book.user_id
      redirect_to action: :index
    end
  end
end
