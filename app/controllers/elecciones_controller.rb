class EleccionesController < ApplicationController
  def salir
  end
  def inicio
     @representantems = Representantem.all
     @representantets = Representantet.all
     @representantens = Representanten.all
     @representantefs = Representantef.all
  end
  def admin
    @representantems = Representantem.all
     @representantets = Representantet.all
     @representantens = Representanten.all
     @representantefs = Representantef.all
  end
end
