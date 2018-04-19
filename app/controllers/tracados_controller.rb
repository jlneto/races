class TracadosController < ApplicationController
  before_action :set_tracado, only: [:show, :edit, :update, :destroy]

  # GET /tracados
  # GET /tracados.json
  def index
    @tracados = Tracado.all
  end

  # GET /tracados/1
  # GET /tracados/1.json
  def show
  end

  # GET /tracados/new
  def new
    @tracado = Tracado.new
  end

  # GET /tracados/1/edit
  def edit
  end

  # POST /tracados
  # POST /tracados.json
  def create
    @tracado = Tracado.new(tracado_params)

    respond_to do |format|
      if @tracado.save
        format.html { redirect_to @tracado, notice: 'Tracado was successfully created.' }
        format.json { render :show, status: :created, location: @tracado }
      else
        format.html { render :new }
        format.json { render json: @tracado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tracados/1
  # PATCH/PUT /tracados/1.json
  def update
    respond_to do |format|
      if @tracado.update(tracado_params)
        format.html { redirect_to @tracado, notice: 'Tracado was successfully updated.' }
        format.json { render :show, status: :ok, location: @tracado }
      else
        format.html { render :edit }
        format.json { render json: @tracado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracados/1
  # DELETE /tracados/1.json
  def destroy
    @tracado.destroy
    respond_to do |format|
      format.html { redirect_to tracados_url, notice: 'Tracado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tracado
      @tracado = Tracado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tracado_params
      params.require(:tracado).permit(:nome, :pista, :imagem, :melhor_tempo)
    end
end
