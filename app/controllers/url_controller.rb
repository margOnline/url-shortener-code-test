class UrlController < ApplicationController
  
  def index
  end

  def shorten
    @url = params[:url]
    if valid?(@url)
      @response = UrlService.new(@url).shorten
    else
      @response = "invalid url supplied"
    end
  end

  private
  def valid?(url)
    UrlService.new(url).valid?
  end
end
