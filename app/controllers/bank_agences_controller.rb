class BankAgencesController < ApplicationController
  before_action :set_bank_agence, only: [:show, :edit, :update, :destroy]

  # GET /bank_agences
  # GET /bank_agences.json
  def index
    @bank_agences = BankAgence.all
  end

  # GET /bank_agences/1
  # GET /bank_agences/1.json
  def show
  end

  # GET /bank_agences/new
  def new
    @bank_agence = BankAgence.new
  end

  # GET /bank_agences/1/edit
  def edit
  end

  # POST /bank_agences
  # POST /bank_agences.json
  def create
    @bank_agence = BankAgence.new(bank_agence_params)

    respond_to do |format|
      if @bank_agence.save
        format.html { redirect_to @bank_agence, notice: 'Bank agence was successfully created.' }
        format.json { render :show, status: :created, location: @bank_agence }
      else
        format.html { render :new }
        format.json { render json: @bank_agence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bank_agences/1
  # PATCH/PUT /bank_agences/1.json
  def update
    respond_to do |format|
      if @bank_agence.update(bank_agence_params)
        format.html { redirect_to @bank_agence, notice: 'Bank agence was successfully updated.' }
        format.json { render :show, status: :ok, location: @bank_agence }
      else
        format.html { render :edit }
        format.json { render json: @bank_agence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_agences/1
  # DELETE /bank_agences/1.json
  def destroy
    @bank_agence.destroy
    respond_to do |format|
      format.html { redirect_to bank_agences_url, notice: 'Bank agence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank_agence
      @bank_agence = BankAgence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bank_agence_params
      params.require(:bank_agence).permit(:agence, :address)
    end
end
