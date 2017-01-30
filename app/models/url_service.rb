require "uri"

class UrlService
  SERVICE_PREFIX = "http://mol.ly/"

  attr_accessor :url, :shortened_urls

  def initialize(url)
    @url = url
    @shortened_urls = {}
  end

  def valid?
    begin
      parsed_url = URI.parse(url)
      !parsed_url.host.nil? && parsed_url.kind_of?(URI::HTTP)
    rescue URI::InvalidURIError
      false
    end
  end

  def shorten
    SERVICE_PREFIX + random_chars
  end

  private

  def random_chars
    rand(36**8).to_s(36)
  end

end