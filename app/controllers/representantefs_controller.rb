class RepresentantefsController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_representantef, only: [:show, :edit, :update, :destroy, :upvote]

  respond_to :html

  def index
    @representantefs = Representantef.all
    respond_with(@representantefs)
  end

  def show
    respond_with(@representantef)
  end

  def new
    @representantef = Representantef.new
    respond_with(@representantef)
  end

  def edit
  end

   def create
    @representantef = Representantef.new(representantef_params)

    respond_to do |format|
      if @representantef.save
        format.html { redirect_to @representantef, notice: 'representantef was successfully created.' }
        format.json { render :show, status: :created, location: @representantef }
      else
        format.html { render :new }
        format.json { render json: @representantef.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /representantefs/1
  # PATCH/PUT /representantefs/1.json
  def update
    respond_to do |format|
      if @representantef.update(representantef_params)
        format.html { redirect_to @representantef, notice: 'representantef was successfully updated.' }
        format.json { render :show, status: :ok, location: @representantef }
      else
        format.html { render :edit }
        format.json { render json: @representantef.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /representantefs/1
  # DELETE /representantefs/1.json
  def destroy
    @representantef.destroy
    respond_to do |format|
      format.html { redirect_to representantefs_url, notice: 'representantef was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def upvote
    @representantef.upvote_by current_usuario
    redirect_to :salir
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_representantef
      @representantef = Representantef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def representantef_params
      params.require(:representantef).permit(:nombre, :foto)
    end
end
