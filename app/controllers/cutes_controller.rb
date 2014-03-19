class CutesController < ApplicationController
  before_action :set_cute, only: [:show, :edit, :update, :destroy]

  # GET /cutes
  # GET /cutes.json
  def index
    @cutes = Cute.all
  end

  # GET /cutes/1
  # GET /cutes/1.json
  def show
  end

  # GET /cutes/new
  def new
    @cute = Cute.new
  end

  # GET /cutes/1/edit
  def edit
  end

  # POST /cutes
  # POST /cutes.json
  def create
    @cute = Cute.new(cute_params)

    respond_to do |format|
      if @cute.save
        format.html { redirect_to @cute, notice: 'Cute was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cute }
      else
        format.html { render action: 'new' }
        format.json { render json: @cute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cutes/1
  # PATCH/PUT /cutes/1.json
  def update
    respond_to do |format|
      if @cute.update(cute_params)
        format.html { redirect_to @cute, notice: 'Cute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cutes/1
  # DELETE /cutes/1.json
  def destroy
    @cute.destroy
    respond_to do |format|
      format.html { redirect_to cutes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cute
      @cute = Cute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cute_params
      params.require(:cute).permit(:Animal, :image_url, :description, :level_of_cuteness)
    end
end
