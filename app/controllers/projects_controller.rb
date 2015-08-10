class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
  end

  # GET /projects/new
  def new
    @project = Project.new
    @project.project_categories.build
  end

  # GET /projects/1/edit
  def edit
    @project = Project.new(project_params)
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

     if @project.save
      redirect_to @project, notice: 'project was successfully created.'
    else
      render :new
    end

  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
      @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to @project, notice: 'Survey was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
      redirect_to projects_url, notice: 'Survey was successfully destroyed.'
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :description, :company, :location, :supervisior, 
        :date, :manday, :workingweek, :holiday, :user_id,
        project_categories_attributes: [:id,:description,:project_id],
        tasks_attributes:[:id,:description,:project_category_id,:startdate,:enddate,:toatalmandays])
    end
end
