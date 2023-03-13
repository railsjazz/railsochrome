class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show edit update destroy ]

  # GET /projects
  def index
    Railsochrome.log("Opening index action")
    Railsochrome.log("user_id = #{rand(111)}")
    Railsochrome.log("account_id = #{rand(111)}")

    @projects = Project.all
  end

  # GET /projects/1
  def show
    Railsochrome.log("opening #{params[:id]}")
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  def ajax
    Railsochrome.log("this message from BE for ajax call")

    render js: "alert('it works')"
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: "Project was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Project was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
    redirect_to projects_url, notice: "Project was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:title, :priority)
    end
end
