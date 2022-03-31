class AcceuilsController < ApplicationController
  before_action :set_acceuil, only: %i[ show edit update destroy ]

  # GET /acceuils or /acceuils.json
  def index
    @acceuils = Acceuil.all
  end

  # GET /acceuils/1 or /acceuils/1.json
  def show
  end

  # GET /acceuils/new
  def new
    @acceuil = Acceuil.new
  end

  # GET /acceuils/1/edit
  def edit
  end

  # POST /acceuils or /acceuils.json
  def create
    @acceuil = Acceuil.new(acceuil_params)

    respond_to do |format|
      if @acceuil.save
        format.html { redirect_to acceuil_url(@acceuil), notice: "Acceuil was successfully created." }
        format.json { render :show, status: :created, location: @acceuil }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @acceuil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acceuils/1 or /acceuils/1.json
  def update
    respond_to do |format|
      if @acceuil.update(acceuil_params)
        format.html { redirect_to acceuil_url(@acceuil), notice: "Acceuil was successfully updated." }
        format.json { render :show, status: :ok, location: @acceuil }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @acceuil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acceuils/1 or /acceuils/1.json
  def destroy
    @acceuil.destroy

    respond_to do |format|
      format.html { redirect_to acceuils_url, notice: "Acceuil was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acceuil
      @acceuil = Acceuil.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def acceuil_params
      params.require(:acceuil).permit(:title, :text, :photo, :author, :published_at)
    end
end
