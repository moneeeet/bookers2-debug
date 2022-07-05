class FavoritesController < ApplicationController
  def create
  @book_favorite = Favorite.new(user_id: current_user.id, book_id: params[:book_id])
  @book_favorite.save
  @book = Book.find(params[:book_id])

  end

def destroy
  @book_favorite = Favorite.find_by(user_id: current_user.id, book_id: params[:book_id])
  @book_favorite.destroy
  @book = Book.find(params[:book_id])
end

end
