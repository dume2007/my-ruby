class GgNewsController < ApplicationController
  before_action :set_gg_news, only: [:show, :edit, :update, :destroy]

  # GET /gg_news
  # GET /gg_news.json
  def index
    @gg_news = GgNews.all
  end

  # GET /gg_news/1
  # GET /gg_news/1.json
  def show
  end

  # GET /gg_news/new
  def new
    @gg_news = GgNews.new
  end

  # GET /gg_news/1/edit
  def edit
  end

  # POST /gg_news
  # POST /gg_news.json
  def create
    @gg_news = GgNews.new(gg_news_params)

    respond_to do |format|
      if @gg_news.save
        format.html { redirect_to @gg_news, notice: 'Gg news was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gg_news }
      else
        format.html { render action: 'new' }
        format.json { render json: @gg_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gg_news/1
  # PATCH/PUT /gg_news/1.json
  def update
    respond_to do |format|
      if @gg_news.update(gg_news_params)
        format.html { redirect_to @gg_news, notice: 'Gg news was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gg_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gg_news/1
  # DELETE /gg_news/1.json
  def destroy
    @gg_news.destroy
    respond_to do |format|
      format.html { redirect_to gg_news_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gg_news
      @gg_news = GgNews.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gg_news_params
      params.require(:gg_news).permit(:classid, :imgurl, :title, :author, :filesize, :fileimg, :onclick)
    end
end
