class RepresentantemsController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_representantem, only: [:show, :edit, :update, :destroy, :upvote]
  
  # GET /representantems
  # GET /representantems.json
  def index
    @representantems = Representantem.all
    respond_to do |format|
    format.html
    format.xls
    format.csv { send_data @representantems.to_csv }

  end
  end

  # GET /representantems/1
  # GET /representantems/1.json
  def show
  end

  # GET /representantems/new
  def new
    @representantem = Representantem.new
  end

  # GET /representantems/1/edit
  def edit
  end

  # POST /representantems
  # POST /representantems.json
  def create
    @representantem = Representantem.new(representantem_params)

    respond_to do |format|
      if @representantem.save
        format.html { redirect_to @representantem, notice: 'Representantem was successfully created.' }
        format.json { render :show, status: :created, location: @representantem }
      else
        format.html { render :new }
        format.json { render json: @representantem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /representantems/1
  # PATCH/PUT /representantems/1.json
  def update
    respond_to do |format|
      if @representantem.update(representantem_params)
        format.html { redirect_to @representantem, notice: 'Representantem was successfully updated.' }
        format.json { render :show, status: :ok, location: @representantem }
      else
        format.html { render :edit }
        format.json { render json: @representantem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /representantems/1
  # DELETE /representantems/1.json
  def destroy
    @representantem.destroy
    respond_to do |format|
      format.html { redirect_to representantems_url, notice: 'Representantem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def upvote
    @representantem.upvote_by current_usuario
    redirect_to :salir
  end
  
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_representantem
      @representantem = Representantem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def representantem_params
      params.require(:representantem).permit(:nombre, :foto)
    end
end
