class AddresController < ApplicationController
  before_action :set_addre, only: [:show, :edit, :update, :destroy]

  # GET /addres
  # GET /addres.json
  def index
    @addres = Addre.all
  end

  # GET /addres/1
  # GET /addres/1.json
  def show
  end

  # GET /addres/new
  def new
    @addre = Addre.new
  end

  # GET /addres/1/edit
  def edit
  end

  # POST /addres
  # POST /addres.json
  def create
    @addre = Addre.new(addre_params)

    respond_to do |format|
      if @addre.save
        format.html { redirect_to @addre, notice: 'Addre was successfully created.' }
        format.json { render :show, status: :created, location: @addre }
      else
        format.html { render :new }
        format.json { render json: @addre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addres/1
  # PATCH/PUT /addres/1.json
  def update
    respond_to do |format|
      if @addre.update(addre_params)
        format.html { redirect_to @addre, notice: 'Addre was successfully updated.' }
        format.json { render :show, status: :ok, location: @addre }
      else
        format.html { render :edit }
        format.json { render json: @addre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addres/1
  # DELETE /addres/1.json
  def destroy
    @addre.destroy
    respond_to do |format|
      format.html { redirect_to addres_url, notice: 'Addre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addre
      @addre = Addre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addre_params
      params.require(:addre).permit(:street, :city, :state, :contact_id)
    end
end
