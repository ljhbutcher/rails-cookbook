class BookmarksController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
  end

  def create
    @category = Category.find(params[:category_id])
    @bookmark = @category.bookmarks.new(bookmark_params)
    if @bookmark.save
      redirect_to category_path(@category), notice: "Bookmark created successfully."
    else
      render :new
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @bookmark = @category.bookmarks.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@category), notice: 'Bookmark removed successfully.'
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:recipe_id, :comment)
  end
end
