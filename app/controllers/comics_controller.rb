require 'date'
class ComicsController < ApplicationController
	before_action :set_comic, only: [:show, :edit, :update, :destroy]
	def new
        @comic = Comic.new
        p @comic   
    end

  def show
  	ts = Date.new
    puts '==================>'
    puts ts
    puts '==================>'
  	pub_key = Rails.application.secrets.PUBLIC_KEY
  	pri_key = Rails.application.secrets.PRIVATE_KEY
  	hash = Digest::MD5.hexdigest( ts.to_s + pri_key + pub_key )
  	uri = "http://gateway.marvel.com/v1/public/comics?title=#{@comic.title}&ts=#{ts}&apikey=#{pub_key}&hash=#{hash}"
    uri2 = "http://gateway.marvel.com/v1/public/comics?title=#{@comic.title}%20annual&ts=#{ts}&apikey=#{pub_key}&hash=#{hash}"
  	@response = HTTParty.get(uri)
    @response2 = HTTParty.get(uri2)
    p @response2 
  end

  def edit
  end

  def create
      @comic = Comic.new(comic_params)

      if @comic.save
          id = current_user.id
          @user = User.find(id)
          @user.comics << @comic
          redirect_to root_path
      else
          render :action => :new
      end
  end

  def update
  	if @comic.update(comic_params)
  		redirect_to root_path
  	else
  		render :action => :edit
  	end
  end

  def destroy
  	@comic.destroy
    puts '==================='
    puts 'destroyed'
    puts '==================='
  	redirect_to root_path
  end

  private

  def set_comic
      @comic = Comic.find(params[:id])
  end

  
  def comic_params
      params.require(:comic).permit(:title)
  end

end
