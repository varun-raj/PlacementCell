class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]

  # GET /departments
  # GET /departments.json
  def index
    if admin_signed_in?
    @departments = Department.all
  else 
    redirect_to new_admin_session_path
  end
  end

  # GET /departments/1
  # GET /departments/1.json
  def show
  end

  # GET /departments/new
  def new
     if admin_signed_in?
    @department = Department.new
     else 
    redirect_to new_admin_session_path
  end
  end

  # GET /departments/1/edit
  def edit
  end

  # POST /departments
  # POST /departments.json
  def create
     if admin_signed_in?

    @department = Department.new(department_params)

    respond_to do |format|
      if @department.save
        format.html { redirect_to @department, notice: 'Department was successfully created.' }
        format.json { render :show, status: :created, location: @department }
      else
        format.html { render :new }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
     else 
    redirect_to new_admin_session_path
  end
  end

  # PATCH/PUT /departments/1
  # PATCH/PUT /departments/1.json
  def update
    respond_to do |format|
      if @department.update(department_params)
        format.html { redirect_to @department, notice: 'Department was successfully updated.' }
        format.json { render :show, status: :ok, location: @department }
      else
        format.html { render :edit }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departments/1
  # DELETE /departments/1.json
  def destroy
    @department.destroy
    respond_to do |format|
      format.html { redirect_to departments_url, notice: 'Department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department
      @department = Department.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_params
      params.require(:department).permit(:name, :code, :category)
    end
end
