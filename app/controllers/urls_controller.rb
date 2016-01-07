class UrlsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_url, only: [:show, :edit, :update, :destroy]

  # GET /shirts
  # GET /shirts.json
  def index
    @urls = Url.all
  end

  # POST /shirts
  # POST /shirts.json
  def create
    @url = Url.new(url_params)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url
      @url = Url.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def url_params
      params[:url]
    end
end