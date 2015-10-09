class TitlesController < ApplicationController
  before_action :set_title, only: [:show, :edit, :update, :destroy]

  # GET /titles
  # GET /titles.json
  def index
    #@titles = Title.all
	#@titles = Title.where("title = ?",'Manager')
	#@titles = Title.distinct('title')
	#@titles = Title.select(:title)
	@titles = Title.select(:title).uniq
  end

  def gettitleemp
    ## we will have dept id here
	@depts = Deptemp.where("dept_no = ?", params[:id])
	#deptmanager = Deptmanager.where("dept_no = ?", params[:id])
	employee = Deptmanager.find_by_dept_no(params[:id]).emp_no
	@employee_id = Employee.find_by_emp_no(employee)
  end
  
  # GET /titles/1
  # GET /titles/1.json
  def show
  end

  # GET /titles/new
  def new
    @title = Title.new
  end

  # GET /titles/1/edit
  def edit
  end

  # POST /titles
  # POST /titles.json
  def create
    @title = Title.new(title_params)

    respond_to do |format|
      if @title.save
        format.html { redirect_to @title, notice: 'Title was successfully created.' }
        format.json { render :show, status: :created, location: @title }
      else
        format.html { render :new }
        format.json { render json: @title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titles/1
  # PATCH/PUT /titles/1.json
  def update
    respond_to do |format|
      if @title.update(title_params)
        format.html { redirect_to @title, notice: 'Title was successfully updated.' }
        format.json { render :show, status: :ok, location: @title }
      else
        format.html { render :edit }
        format.json { render json: @title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titles/1
  # DELETE /titles/1.json
  def destroy
    @title.destroy
    respond_to do |format|
      format.html { redirect_to titles_url, notice: 'Title was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title
      @title = Title.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def title_params
      params.require(:title).permit(:emp_no, :title, :from_date, :to_date)
    end
end
