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
    @illness.start = Date.strptime(params.require(:start), '%m-%d-%Y')
    @illness.user = session[:username]

    @illness.save
    implied_redirect
  end

  #  def endillness
  #  end

  # PATCH/PUT /illnesses/1
  # PATCH/PUT /illnesses/1.json
  def update
    if params[:illness]
      @illness.update(illness_params)
    end
    p = params.permit(:start, :end)
    @illness.end   = Date.strptime(p[:end], '%m-%d-%Y')   if p[:end]
    @illness.start = Date.strptime(p[:start], '%m-%d-%Y') if p[:start]
    @illness.save
    implied_redirect
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
      params.require(:illness).permit(*Illness::SYMPTOMS)
    end
end
