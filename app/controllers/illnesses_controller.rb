class IllnessesController < ApplicationController
  before_action :set_illness, only: [:update]

  #  # GET /illnesses
  #  # GET /illnesses.json
  #  def index
  #    @illnesses = Illness.where user: session[:username]
  #    @illness = @illnesses.find do |i| i.end.nil? end
  #  end

  # GET /illnesses/1
  # GET /illnesses/1.json
  #  def show
  #  end

  # GET /illnesses/new
  #  def new
  #    @illness = Illness.new
  #  end

  # GET /illnesses/1/edit
  #  def edit
  #  end

  # POST /illnesses
  # POST /illnesses.json
  def create
    @illness = Illness.new(illness_params)
    @illness.user = session[:username]

    respond_to do |format|
      @illness.save
      format.html { (implied_redirect) || (redirect_to @illness, notice: 'Illness was successfully created.') }
    end
  end

  #  def endillness
  #  end

  # PATCH/PUT /illnesses/1
  # PATCH/PUT /illnesses/1.json
  def update
    respond_to do |format|
      @illness.update(illness_params)
      format.html { (implied_redirect) || (redirect_to @illness, notice: 'Illness was successfully updated.') }
    end
  end

  # DELETE /illnesses/1
  # DELETE /illnesses/1.json
  #  def destroy
  #    @illness.destroy
  #    respond_to do |format|
  #      format.html { (implied_redirect) || (redirect_to illnesses_url) }
  #      format.json { head :no_content }
  #    end
  #  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_illness
      @illness = Illness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def illness_params
      params.require(:illness).permit(:start, :end, :congestion, :fever, :headache, :shits)
    end
end
