class UrlsController < ActionController::Base
  def index
    @urls = Url.all
  end

  def create
    @url = Url.new(url_params)
    if @url.save
      redirect_to urls_path
    else
      @errors = "errors here"
    end
  end

  private
    def url_params
      params.permit[:long_url]
    end
end