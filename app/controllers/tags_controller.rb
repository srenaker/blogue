class TagsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @tag = @article.tags.create!(params[:tag])
    redirect_to @article

  end
  
  def show
    @tag = Tag.find(params[:id])
    @article_ids = Tag.find_by_sql "select article_id from tags where tag = '#{@tag.tag}'" # TO-DO figure out how to do this correctly
    

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

end
