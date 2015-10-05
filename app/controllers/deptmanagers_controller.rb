class DeptmanagersController < ApplicationController
  before_action :set_deptmanager, only: [:show, :edit, :update, :destroy]

  # GET /deptmanagers
  # GET /deptmanagers.json
  def index
    @deptmanagers = Deptmanager.all
  end

  # GET /deptmanagers/1
  # GET /deptmanagers/1.json
  def show
  end

  # GET /deptmanagers/new
  def new
    @deptmanager = Deptmanager.new
  end

  # GET /deptmanagers/1/edit
  def edit
  end

  # POST /deptmanagers
  # POST /deptmanagers.json
  def create
    @deptmanager = Deptmanager.new(deptmanager_params)

    respond_to do |format|
      if @deptmanager.save
        format.html { redirect_to @deptmanager, notice: 'Deptmanager was successfully created.' }
        format.json { render :show, status: :created, location: @deptmanager }
      else
        format.html { render :new }
        format.json { render json: @deptmanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deptmanagers/1
  # PATCH/PUT /deptmanagers/1.json
  def update
    respond_to do |format|
      if @deptmanager.update(deptmanager_params)
        format.html { redirect_to @deptmanager, notice: 'Deptmanager was successfully updated.' }
        format.json { render :show, status: :ok, location: @deptmanager }
      else
        format.html { render :edit }
        format.json { render json: @deptmanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deptmanagers/1
  # DELETE /deptmanagers/1.json
  def destroy
    @deptmanager.destroy
    respond_to do |format|
      format.html { redirect_to deptmanagers_url, notice: 'Deptmanager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deptmanager
      @deptmanager = Deptmanager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deptmanager_params
      params.require(:deptmanager).permit(:dept_no, :emp_no, :from_date, :to_date)
    end
end
