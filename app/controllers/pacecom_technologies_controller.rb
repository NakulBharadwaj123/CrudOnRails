class PacecomTechnologiesController < ApplicationController
  before_action :set_pacecom_technology, only: [:show, :edit, :update, :destroy]

  # GET /pacecom_technologies
  # GET /pacecom_technologies.json
  def index
    @pacecom_technologies = PacecomTechnology.all
  end

  # GET /pacecom_technologies/1
  # GET /pacecom_technologies/1.json
  def show
  end

  # GET /pacecom_technologies/new
  def new
    @pacecom_technology = PacecomTechnology.new
  end

  # GET /pacecom_technologies/1/edit
  def edit
  end

  # POST /pacecom_technologies
  # POST /pacecom_technologies.json
  def create
    @pacecom_technology = PacecomTechnology.new(pacecom_technology_params)

    respond_to do |format|
      if @pacecom_technology.save
        format.html { redirect_to @pacecom_technology, notice: 'New user was successfully created.' }
        format.json { render :show, status: :created, location: @pacecom_technology }
      else
        format.html { render :new }
        format.json { render json: @pacecom_technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacecom_technologies/1
  # PATCH/PUT /pacecom_technologies/1.json
  def update
    respond_to do |format|
      if @pacecom_technology.update(pacecom_technology_params)
        format.html { redirect_to @pacecom_technology, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @pacecom_technology }
      else
        format.html { render :edit }
        format.json { render json: @pacecom_technology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacecom_technologies/1
  # DELETE /pacecom_technologies/1.json
  def destroy
    @pacecom_technology.destroy
    respond_to do |format|
      format.html { redirect_to pacecom_technologies_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pacecom_technology
      @pacecom_technology = PacecomTechnology.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pacecom_technology_params
      params.require(:pacecom_technology).permit(:First_Name, :Last_Name, :Phone, :Job_Role, :Place, :image)
    end
end
