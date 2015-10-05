class DeptempsController < ApplicationController
  before_action :set_deptemp, only: [:show, :edit, :update, :destroy]

  # GET /deptemps
  # GET /deptemps.json
  def index
    @deptemps = Deptemp.all
  end

  # GET /deptemps/1
  # GET /deptemps/1.json
  def show
  end

  # GET /deptemps/new
  def new
    @deptemp = Deptemp.new
  end

  # GET /deptemps/1/edit
  def edit
  end

  # POST /deptemps
  # POST /deptemps.json
  def create
    @deptemp = Deptemp.new(deptemp_params)

    respond_to do |format|
      if @deptemp.save
        format.html { redirect_to @deptemp, notice: 'Deptemp was successfully created.' }
        format.json { render :show, status: :created, location: @deptemp }
      else
        format.html { render :new }
        format.json { render json: @deptemp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deptemps/1
  # PATCH/PUT /deptemps/1.json
  def update
    respond_to do |format|
      if @deptemp.update(deptemp_params)
        format.html { redirect_to @deptemp, notice: 'Deptemp was successfully updated.' }
        format.json { render :show, status: :ok, location: @deptemp }
      else
        format.html { render :edit }
        format.json { render json: @deptemp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deptemps/1
  # DELETE /deptemps/1.json
  def destroy
    @deptemp.destroy
    respond_to do |format|
      format.html { redirect_to deptemps_url, notice: 'Deptemp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deptemp
      @deptemp = Deptemp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deptemp_params
      params.require(:deptemp).permit(:emp_no, :dept_no, :from_date, :to_date)
    end
end
