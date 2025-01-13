class BookmarksController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
    @recipes = Recipe.all
  end

  def create
    @category = Category.find(params[:category_id])
    @bookmark = @category.bookmarks.build(bookmark_params)
    @bookmark.recipe = Recipe.find(params[:bookmark][:recipe_id])
    if @bookmark.save
      redirect_to category_path(@category), notice: "Recipe successfully added to category!"
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @category = @bookmark.category
    @bookmark.destroy
    redirect_to @category
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:recipe_id, :comment)
  end
end
