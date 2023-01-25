class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
      @url = Url.new(url_params)
        respond_to do |format|
          if @url.save
            format.html { redirect_to url_path(@url), notice: "Short URL created!" }
            format.json { render :show, status: :created, location: @url }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @url.errors, status: :unprocessable_entity }
          end
        end
    end

  def show
    @url = Url.find (params[:id])
    render :show
  end

  private

  def url_params
    params.require(:url).permit(:original_url)
  end
end
