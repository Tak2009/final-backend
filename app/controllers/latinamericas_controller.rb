class LatinamericasController < ApplicationController
  before_action :set_latinamerica, only: [:show, :update, :destroy]

  # GET /latinamericas
  def index
    @latinamericas = Latinamerica.all

    render json: @latinamericas
  end

  # GET /latinamericas/1
  def show
    render json: @latinamerica
  end

  # POST /latinamericas
  def create
    @latinamerica = Latinamerica.new(latinamerica_params)

    if @latinamerica.save
      render json: @latinamerica, status: :created, location: @latinamerica
    else
      render json: @latinamerica.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /latinamericas/1
  def update
    if @latinamerica.update(latinamerica_params)
      render json: @latinamerica
    else
      render json: @latinamerica.errors, status: :unprocessable_entity
    end
  end

  # DELETE /latinamericas/1
  def destroy
    @latinamerica.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_latinamerica
      @latinamerica = Latinamerica.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def latinamerica_params
      params.require(:latinamerica).permit(:category, :id_number, :region, :site, :states, :image_url, :location, :short_description, :http_url, :rating)
    end
end
