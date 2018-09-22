class MovimentantionsController < ApplicationController
  before_action :set_movimentantion, only: [:show, :edit, :update, :destroy]

  # GET /movimentantions
  # GET /movimentantions.json
  def index
    @movimentantions = Movimentantion.all
  end

  # GET /movimentantions/1
  # GET /movimentantions/1.json
  def show
  end

  # GET /movimentantions/new
  def new
    @movimentantion = Movimentantion.new
  end

  # GET /movimentantions/1/edit
  def edit
  end

  # POST /movimentantions
  # POST /movimentantions.json
  def create
    @movimentantion = Movimentantion.new(movimentantion_params)

    respond_to do |format|
      if @movimentantion.save
        format.html { redirect_to @movimentantion, notice: 'Movimentantion was successfully created.' }
        format.json { render :show, status: :created, location: @movimentantion }
      else
        format.html { render :new }
        format.json { render json: @movimentantion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimentantions/1
  # PATCH/PUT /movimentantions/1.json
  def update
    respond_to do |format|
      if @movimentantion.update(movimentantion_params)
        format.html { redirect_to @movimentantion, notice: 'Movimentantion was successfully updated.' }
        format.json { render :show, status: :ok, location: @movimentantion }
      else
        format.html { render :edit }
        format.json { render json: @movimentantion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimentantions/1
  # DELETE /movimentantions/1.json
  def destroy
    @movimentantion.destroy
    respond_to do |format|
      format.html { redirect_to movimentantions_url, notice: 'Movimentantion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimentantion
      @movimentantion = Movimentantion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movimentantion_params
      params.require(:movimentantion).permit(:bank_account_id, :movimentation_date, :value, :movimentation_type, :user_id)
    end
end
