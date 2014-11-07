class ConsommablesController < ApplicationController
	def home
			@consommables = Consommable.all
	end
	def new
		@consommable = Consommable.new
	end
	def create
		@consommable = Consommable.new(consommable_params)
		# @printer_conso = Printer_consommable.new(printer_consos_params)
		respond_to do |format|
			if @consommable.save
				# set_flash_message :notice, :toto
				# @printer_conso = Printer_conso.new(printer_consos_params)
				flash[:notice] = "Le consommable a bien été créé."
				format.html {redirect_to '/'}
			else
				flash[:alert] = "Le consommable n'a pas été créé"
			end
		end
	end
	def show
    @consommable = Consommable.find(params[:id])
    @titre = "CONSO"
  end	


	def consommable_params
		params.require(:consommable).permit(:codeConsommables, :designationConsommables, :printer_id)
	end
	def printer_consos_params
		params.require(:consommable).permit(:printer_id, :consommable_id)
	end

end
