class PrintersController < ApplicationController
	def index
		@printers = Printer.all
		#@printer = Printer.find(params[:id])
		@titre = "Liste des Imprimantes"
	end
	def new	
		@printer = Printer.new
	end
	

	def create
		@printer = Printer.new(user_params)
		@printer.save
		respond_to do |format|
			if @printer.save
				flash[:notice] = "L'Imprimante a bien été créé."
				format.html {redirect_to @printer}
			else
				flash[:alert] = "L'Imprimante n'a pas été créé"
			end
		end

	end

	def updatee
		@definition = "--> Methode non defini par le CRUD (Create/Update/Delete)"
	end

	def user_params
		params.require(:printer).permit(:codePrinters, :descriptionPrinters)
	end
	
	def show
		@printer = Printer.find(params[:id])
	  @titre = "Imprimante"
    @incident = Incident.new
    @incidents =@printer.incidents
    #@consommables = @printer.consommables

    @consommable = Consommable.new
    @consommables = @printer.consommables
     # @consommables = Consommable.all
	end

end
