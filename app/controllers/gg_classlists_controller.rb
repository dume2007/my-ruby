class GgClasslistsController < ApplicationController
  before_action :set_gg_classlist, only: [:show, :edit, :update, :destroy]

  # GET /gg_classlists
  # GET /gg_classlists.json
  def index
    @gg_classlists = GgClasslist.all
  end

  # GET /gg_classlists/1
  # GET /gg_classlists/1.json
  def show
  end

  # GET /gg_classlists/new
  def new
    @gg_classlist = GgClasslist.new
  end

  # GET /gg_classlists/1/edit
  def edit
  end

  # POST /gg_classlists
  # POST /gg_classlists.json
  def create
    @gg_classlist = GgClasslist.new(gg_classlist_params)

    respond_to do |format|
      if @gg_classlist.save
        format.html { redirect_to @gg_classlist, notice: 'Gg classlist was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gg_classlist }
      else
        format.html { render action: 'new' }
        format.json { render json: @gg_classlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gg_classlists/1
  # PATCH/PUT /gg_classlists/1.json
  def update
    respond_to do |format|
      if @gg_classlist.update(gg_classlist_params)
        format.html { redirect_to @gg_classlist, notice: 'Gg classlist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gg_classlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gg_classlists/1
  # DELETE /gg_classlists/1.json
  def destroy
    @gg_classlist.destroy
    respond_to do |format|
      format.html { redirect_to gg_classlists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gg_classlist
      @gg_classlist = GgClasslist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gg_classlist_params
      params.require(:gg_classlist).permit(:classname)
    end
end
