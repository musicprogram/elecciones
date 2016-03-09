class RepresentantensController < ApplicationController
   before_action :authenticate_usuario!
  before_action :set_representanten, only: [:show, :edit, :update, :destroy, :upvote]

  respond_to :html

  def index
    @home_pagebb = true
    @representantens = Representanten.all
    respond_with(@representantens)
  end

  def show
    respond_with(@representanten)
  end

  def new
    @representanten = Representanten.new
    respond_with(@representanten)
  end

  def edit
  end

 def create
    @representanten = Representanten.new(representanten_params)

    respond_to do |format|
      if @representanten.save
        format.html { redirect_to @representanten, notice: 'representanten was successfully created.' }
        format.json { render :show, status: :created, location: @representanten }
      else
        format.html { render :new }
        format.json { render json: @representanten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /representantens/1
  # PATCH/PUT /representantens/1.json
  def update
    respond_to do |format|
      if @representanten.update(representanten_params)
        format.html { redirect_to @representanten, notice: 'representanten was successfully updated.' }
        format.json { render :show, status: :ok, location: @representanten }
      else
        format.html { render :edit }
        format.json { render json: @representanten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /representantens/1
  # DELETE /representantens/1.json
  def destroy
    @representanten.destroy
    respond_to do |format|
      format.html { redirect_to representantens_url, notice: 'representanten was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def upvote
    @representanten.upvote_by current_usuario
    redirect_to :salir
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_representanten
      @representanten = Representanten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def representanten_params
      params.require(:representanten).permit(:nombre, :foto)
    end
end
