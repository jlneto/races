class PilotosController < ApplicationController
  before_action :set_piloto, only: [:show, :edit, :update, :destroy]

  # GET /pilotos
  # GET /pilotos.json
  def index
    @pilotos = Piloto.all
  end

  # GET /pilotos/1
  # GET /pilotos/1.json
  def show
  end

  # GET /pilotos/new
  def new
    @piloto = Piloto.new
  end

  # GET /pilotos/1/edit
  def edit
  end

  # POST /pilotos
  # POST /pilotos.json
  def create
    @piloto = Piloto.new(piloto_params)

    respond_to do |format|
      if @piloto.save
        format.html { redirect_to @piloto, notice: 'Piloto was successfully created.' }
        format.json { render :show, status: :created, location: @piloto }
      else
        format.html { render :new }
        format.json { render json: @piloto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pilotos/1
  # PATCH/PUT /pilotos/1.json
  def update
    respond_to do |format|
      if @piloto.update(piloto_params)
        format.html { redirect_to @piloto, notice: 'Piloto was successfully updated.' }
        format.json { render :show, status: :ok, location: @piloto }
      else
        format.html { render :edit }
        format.json { render json: @piloto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pilotos/1
  # DELETE /pilotos/1.json
  def destroy
    @piloto.destroy
    respond_to do |format|
      format.html { redirect_to pilotos_url, notice: 'Piloto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piloto
      @piloto = Piloto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piloto_params
      params.require(:piloto).permit(:nome, :cpf, :nascimento, :apelido, :email, :celular)
    end
end
