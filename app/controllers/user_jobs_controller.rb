class UserJobsController < ApplicationController
  before_action :set_user_job, only: [:show, :edit, :update, :destroy]

  # GET /user_jobs
  def index
    @user_jobs = UserJob.all.order("user_id ASC")
  end

  # GET /user_jobs/1
  def show
  end

  # GET /user_jobs/new
  def new
    @user_job = UserJob.new
  end

  # GET /user_jobs/1/edit
  def edit
  end

  # POST /user_jobs
  def create
    @user_job = UserJob.new(user_job_params)
    #UserMailer.jobs(@user_job).deliver
    if @user_job.save
      redirect_to @user_job, notice: 'User job was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /user_jobs/1
  def update
    if @user_job.update(user_job_params)
      redirect_to @user_job, notice: 'User job was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /user_jobs/1
  def destroy
    @user_job.destroy
    redirect_to user_jobs_url, notice: 'User job was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_job
      @user_job = UserJob.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_job_params
      params.require(:user_job).permit(:user_id, :job_id, :result_id, :applied, :interview, :shortlist, :final, :reason, :requirement_id)
    end
end
