class GgNewsFilesController < ApplicationController
  before_action :set_gg_news_file, only: [:show, :edit, :update, :destroy]

  # GET /gg_news_files
  # GET /gg_news_files.json
  def index
    @gg_news_files = GgNewsFile.all
  end

  # GET /gg_news_files/1
  # GET /gg_news_files/1.json
  def show
  end

  # GET /gg_news_files/new
  def new
    @gg_news_file = GgNewsFile.new
  end

  # GET /gg_news_files/1/edit
  def edit
  end

  # POST /gg_news_files
  # POST /gg_news_files.json
  def create
    @gg_news_file = GgNewsFile.new(gg_news_file_params)

    respond_to do |format|
      if @gg_news_file.save
        format.html { redirect_to @gg_news_file, notice: 'Gg news file was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gg_news_file }
      else
        format.html { render action: 'new' }
        format.json { render json: @gg_news_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gg_news_files/1
  # PATCH/PUT /gg_news_files/1.json
  def update
    respond_to do |format|
      if @gg_news_file.update(gg_news_file_params)
        format.html { redirect_to @gg_news_file, notice: 'Gg news file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gg_news_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gg_news_files/1
  # DELETE /gg_news_files/1.json
  def destroy
    @gg_news_file.destroy
    respond_to do |format|
      format.html { redirect_to gg_news_files_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gg_news_file
      @gg_news_file = GgNewsFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gg_news_file_params
      params.require(:gg_news_file).permit(:news_id, :downpath)
    end
end
