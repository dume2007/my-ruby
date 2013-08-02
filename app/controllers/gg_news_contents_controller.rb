class GgNewsContentsController < ApplicationController
  before_action :set_gg_news_content, only: [:show, :edit, :update, :destroy]

  # GET /gg_news_contents
  # GET /gg_news_contents.json
  def index
    @gg_news_contents = GgNewsContent.all
  end

  # GET /gg_news_contents/1
  # GET /gg_news_contents/1.json
  def show
  end

  # GET /gg_news_contents/new
  def new
    @gg_news_content = GgNewsContent.new
  end

  # GET /gg_news_contents/1/edit
  def edit
  end

  # POST /gg_news_contents
  # POST /gg_news_contents.json
  def create
    @gg_news_content = GgNewsContent.new(gg_news_content_params)

    respond_to do |format|
      if @gg_news_content.save
        format.html { redirect_to @gg_news_content, notice: 'Gg news content was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gg_news_content }
      else
        format.html { render action: 'new' }
        format.json { render json: @gg_news_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gg_news_contents/1
  # PATCH/PUT /gg_news_contents/1.json
  def update
    respond_to do |format|
      if @gg_news_content.update(gg_news_content_params)
        format.html { redirect_to @gg_news_content, notice: 'Gg news content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gg_news_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gg_news_contents/1
  # DELETE /gg_news_contents/1.json
  def destroy
    @gg_news_content.destroy
    respond_to do |format|
      format.html { redirect_to gg_news_contents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gg_news_content
      @gg_news_content = GgNewsContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gg_news_content_params
      params.require(:gg_news_content).permit(:news_id, :content, :extra)
    end
end
