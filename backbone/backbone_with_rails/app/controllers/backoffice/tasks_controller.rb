class Backoffice::TasksController < ApplicationController
  layout "backoffice"


  before_action :set_backoffice_task, only: [:show, :edit, :update, :destroy]

  # GET /backoffice/tasks
  # GET /backoffice/tasks.json
  def index
    @backoffice_tasks = Backoffice::Task.all
  end

  # GET /backoffice/tasks/1
  # GET /backoffice/tasks/1.json
  def show
  end

  # GET /backoffice/tasks/new
  def new
    @backoffice_task = Backoffice::Task.new
  end

  # GET /backoffice/tasks/1/edit
  def edit
  end

  # POST /backoffice/tasks
  # POST /backoffice/tasks.json
  def create
    @backoffice_task = Backoffice::Task.new(backoffice_task_params)

    respond_to do |format|
      if @backoffice_task.save
        format.html { redirect_to @backoffice_task, notice: 'Task was successfully created.' }
        format.json { render action: 'show', status: :created, location: @backoffice_task }
      else
        format.html { render action: 'new' }
        format.json { render json: @backoffice_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backoffice/tasks/1
  # PATCH/PUT /backoffice/tasks/1.json
  def update
    respond_to do |format|
      if @backoffice_task.update(backoffice_task_params)
        format.html { redirect_to @backoffice_task, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @backoffice_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backoffice/tasks/1
  # DELETE /backoffice/tasks/1.json
  def destroy
    @backoffice_task.destroy
    respond_to do |format|
      format.html { redirect_to backoffice_tasks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backoffice_task
      @backoffice_task = Backoffice::Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def backoffice_task_params
      params.require(:backoffice_task).permit(:description, :done)
    end
end
