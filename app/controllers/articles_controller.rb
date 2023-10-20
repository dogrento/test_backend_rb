# frozen_string_literal: true

# following the official rails documentation:
# It's inside this class that you'll define methods that will become the actions for this controller.
# These actions will perform CRUD operations on the articles within our system.
# There are public, private and protected methods in Ruby, but only public methods can be actions for controllers
class ArticlesController < ApplicationController

  def index
    @article = Article.all
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
    # render plain: params[:article].inspect
    # puts params[:article].inspect
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
