class UrlController < ApplicationController
  
  def index
  end

  def shorten
    url = validate(params[:url])
  end

  def validate(url)
    url
  end
end
