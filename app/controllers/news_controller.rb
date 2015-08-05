class NewsController < ApplicationController
  def index
  	@news = News.all
  end

  def new
    @news = News.new
  end

  def create
  	@news = News.new(news_params)
  	if @news.save
  	  redirect_to news_index_path
  	else
  	  render 'new'
  	end
  end

  def edit
  	@news = News.find params[:id]
  end

  def update
  	@news = News.find params[:id]
  	if @news.update!(news_params)
  	  redirect_to news_index_path
  	else
  	  render 'edit'
  	end
  end

  def destroy
    @news = News.find params[:id]
    @news.delete
    redirect_to news_index_path
  end

  # def show
  # 	@news = News.find params[:id]
  # end

  private

  def news_params
  	params.require(:news).permit(:subject, :type_name, :description, :link, :event_date, :priority, :modul_id)
  end
end
