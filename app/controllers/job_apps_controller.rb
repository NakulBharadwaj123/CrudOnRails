class JobAppsController < ApplicationController
  before_action :set_job_app, only: [:show, :edit, :update, :destroy]

  # GET /job_apps
  # GET /job_apps.json
  def index
    @job_apps = JobApp.all
  end

  # GET /job_apps/1
  # GET /job_apps/1.json
  def show
  end

  # GET /job_apps/new
  def new
    @job_app = JobApp.new
  end

  # GET /job_apps/1/edit
  def edit
  end

  # POST /job_apps
  # POST /job_apps.json
  def create
    @job_app = JobApp.new(job_app_params)

    respond_to do |format|
      if @job_app.save
        format.html { redirect_to @job_app, notice: 'Job app was successfully created.' }
        format.json { render :show, status: :created, location: @job_app }
      else
        format.html { render :new }
        format.json { render json: @job_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_apps/1
  # PATCH/PUT /job_apps/1.json
  def update
    respond_to do |format|
      if @job_app.update(job_app_params)
        format.html { redirect_to @job_app, notice: 'Job app was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_app }
      else
        format.html { render :edit }
        format.json { render json: @job_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_apps/1
  # DELETE /job_apps/1.json
  def destroy
    @job_app.destroy
    respond_to do |format|
      format.html { redirect_to job_apps_url, notice: 'Job app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_app
      @job_app = JobApp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_app_params
      params.require(:job_app).permit(:First, :Name, :Last, :Name, :Phone, :Job, :Role, :Place)
    end
end
