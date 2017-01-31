class UrlController < ApplicationController
  
  def index
  end

  def shorten
    @response = {}
    @url = params[:url]
    if valid?(@url)
      @response[:success] = UrlService.new(@url).shorten
    else
      @response[:error] = "invalid url"
    end
  end

  private
  def valid?(url)
    UrlService.new(url).valid?
  end
end
