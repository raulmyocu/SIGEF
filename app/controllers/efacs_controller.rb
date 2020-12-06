class EfacsController < ApplicationController
  before_action :set_efac, only: [:show, :edit, :update, :destroy, :present]

  # GET /efacs
  # GET /efacs.json
  def index
    if current_user.permission.eql?("responsible") 
      @efacs = current_user.efacs
    elsif current_user.permission.eql?("admin")
      @efacs = Efac.all
    else
      @efacs = Efac.where(sent: true)
    end
  end

  # GET /efacs/1
  # GET /efacs/1.json
  def show
  end

  # GET /efacs/new
  def new
    @efac = Efac.new
  end

  # GET /efacs/1/edit
  def edit
  end

  # POST /efacs
  # POST /efacs.json
  def create
    #@efac = Efac.new(efac_params)
    @efac = current_user.efacs.create(efac_params)
    @efac.update(sent: false)
    @efac.update(responsible_name: current_user.name)
    respond_to do |format|
      if @efac.save
        format.html { redirect_to @efac, notice: 'El Evento Formativo se ha creado con éxito.' }
        format.json { render :show, status: :created, location: @efac }
      else
        format.html { render :new }
        format.json { render json: @efac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /efacs/1
  # PATCH/PUT /efacs/1.json
  def update
    respond_to do |format|
      if @efac.update(efac_params)
        format.html { redirect_to @efac, notice: 'El Evento formativo se ha actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @efac }
      else
        format.html { render :edit }
        format.json { render json: @efac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /efacs/1
  # DELETE /efacs/1.json
  def destroy
    @efac.destroy
    respond_to do |format|
      format.html { redirect_to efacs_url, notice: 'El Evento formativo se ha eliminado con éxito.' }
      format.json { head :no_content }
    end
  end
  
  def present
    @efac.update_attribute(:sent, true)
    #redirect_to root_path
    #render json: @efac
    respond_to do |format|
      format.html { redirect_to efacs_url, notice: 'El Evento Formativo se ha presentado.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_efac
      @efac = Efac.find(params[:id])
    end

   

    # Only allow a list of trusted parameters through.
    def efac_params
      params.require(:efac).permit(:name, :modality, :objectives, :content_type, :eval_method, :duration, :resources, :references, :utility, :participation_requirements, :acreditation_requirements, :operative_conditions, :resources_availability, :fee, :instructor_name, :instructor_experience, :instructor_resumee, :content )

    end
end
