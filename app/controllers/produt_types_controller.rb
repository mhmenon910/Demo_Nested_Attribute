class ProdutTypesController < ApplicationController
  before_action :set_produt_type, only: [:show, :edit, :update, :destroy]

  # GET /produt_types
  # GET /produt_types.json
  def index
    @produt_types = ProdutType.all
  end

  # GET /produt_types/1
  # GET /produt_types/1.json
  def show
  end

  # GET /produt_types/new
  def new
    @produt_type = ProdutType.new
  end

  # GET /produt_types/1/edit
  def edit
  end

  # POST /produt_types
  # POST /produt_types.json
  def create
    @produt_type = ProdutType.new(produt_type_params)

    respond_to do |format|
      if @produt_type.save
        format.html { redirect_to @produt_type, notice: 'Produt type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @produt_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @produt_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produt_types/1
  # PATCH/PUT /produt_types/1.json
  def update
    respond_to do |format|
      if @produt_type.update(produt_type_params)
        format.html { redirect_to @produt_type, notice: 'Produt type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @produt_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produt_types/1
  # DELETE /produt_types/1.json
  def destroy
    @produt_type.destroy
    respond_to do |format|
      format.html { redirect_to produt_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produt_type
      @produt_type = ProdutType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produt_type_params
   #   params.require(:produt_type).permit(:name)
 params.require(:produt_type).permit(:name).tap do |whitelisted|
        whitelisted[:fields_attributes] = params[:produt_type][:fields_attributes]
      end
    end
end
