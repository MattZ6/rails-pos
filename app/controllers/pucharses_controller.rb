class PucharsesController < ApplicationController
  before_action :set_products
  before_action :set_pucharse, only: [:show, :edit, :update, :destroy]

  # GET /pucharses
  # GET /pucharses.json
  def index
    @pucharses = current_user.pucharses.all
  end

  # GET /pucharses/1
  # GET /pucharses/1.json
  def show
  end

  # GET /pucharses/new
  def new
    @pucharse = Pucharse.new
  end

  # GET /pucharses/1/edit
  def edit
  end

  # POST /pucharses
  # POST /pucharses.json
  def create
    @pucharse = current_user.profile.pucharses.new(pucharse_params)

    respond_to do |format|
      if @pucharse.save
        format.html { redirect_to pucharses_url, notice: 'Compra criada com sucesso.' }
        format.json { render :show, status: :created, location: @pucharse }
      else
        format.html { render :new }
        format.json { render json: @pucharse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pucharses/1
  # PATCH/PUT /pucharses/1.json
  def update
    respond_to do |format|
      if @pucharse.update(pucharse_params)
        format.html { redirect_to pucharses_url, notice: 'Compra alterada com sucesso.' }
        format.json { render :show, status: :ok, location: @pucharse }
      else
        format.html { render :edit }
        format.json { render json: @pucharse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pucharses/1
  # DELETE /pucharses/1.json
  def destroy
    @pucharse.destroy
    respond_to do |format|
      format.html { redirect_to pucharses_url, notice: 'Compra excluida com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_products
      @products = Product.all
    end

    def set_pucharse
      @pucharse = Pucharse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pucharse_params
      params.require(:pucharse).permit(:description, :was_bought, :profile_id, product_pucharses_attributes: [:name, :id, :_destroy, :product_id])
    end
end
