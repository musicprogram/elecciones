class RepresentantetsController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_representantet, only: [:show, :edit, :update, :destroy, :upvote]

  respond_to :html

  def index
    @home_pagecc = true
    @representantets = Representantet.all
    respond_with(@representantets)
  end

  def show
    respond_with(@representantet)
  end

  def new
    @representantet = Representantet.new
    respond_with(@representantet)
  end

  def edit
  end

  def create
    @representantet = Representantet.new(representantet_params)

    respond_to do |format|
      if @representantet.save
        format.html { redirect_to @representantet, notice: 'representantet was successfully created.' }
        format.json { render :show, status: :created, location: @representantet }
      else
        format.html { render :new }
        format.json { render json: @representantet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /representantets/1
  # PATCH/PUT /representantets/1.json
  def update
    respond_to do |format|
      if @representantet.update(representantet_params)
        format.html { redirect_to @representantet, notice: 'representantet was successfully updated.' }
        format.json { render :show, status: :ok, location: @representantet }
      else
        format.html { render :edit }
        format.json { render json: @representantet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /representantets/1
  # DELETE /representantets/1.json
  def destroy
    @representantet.destroy
    respond_to do |format|
      format.html { redirect_to representantets_url, notice: 'representantet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def upvote
    @representantet.upvote_by current_usuario
    redirect_to :salir
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_representantet
      @representantet = Representantet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def representantet_params
      params.require(:representantet).permit(:nombre, :foto)
    end
end
