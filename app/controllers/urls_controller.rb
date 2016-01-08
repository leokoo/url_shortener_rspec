class UrlsController < ActionController::Base
  def index
    @urls = Url.all
  end

  # def create
  #   @url = Url.new(long_url: params[:long_url])
  #   @errors = "error"
  #   if !params[:long_url].nil?
  #     @url.short_url = SecureRandom.base64[0..8]
  #     @url.save
  #     redirect_to urls_path
  #   else
  #     render :new
  #   end
  # end

  def create
    @url = Url.new(url_params)
    if @url.save
    else
      @errors = "errors here"
    end
    redirect_to urls_path
  end

  private
    def url_params
      params.permit(:long_url).merge(short_url: SecureRandom.base64[0..8])
    # params[:long_url]
    end
end