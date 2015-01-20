class ReleveCompteursController < ApplicationController


	def index
		@releves_compteurs = ReleveCompteur.all
		
		@releve_compteurs = "Liste des Releve Compteur"
	end

  def new
  	@releve_compteur = ReleveCompteur.new
  end
  def create
  	@releve_compteur = ReleveCompteur.create(releve_compteur_params)
  	@printer = Printer.find(params[:releve_compteur][:printer_id])
		if @releve_compteur.save
			flash[:notice] = "Le Relevé Compteur a bien été créé."
		else
			flash[:alert] = "Le Relevé Compteur n'a pas été créé."
		end
		redirect_to @printer
  end

  def show
    @releve_compteur = ReleveCompteur.find(params[:id])
    @titre = "releve_compteur"
  end


  def delete
		@releve_compteur = ReleveCompteur.find(params[:id])
    @printer = Printer.find(@releve_compteur.printer_id)
    if @releve_compteur.destroy
    	flash[:notice] = "Le releve_compteur a bien été supprimé."
  	else
  		flash[:alert] = "Le releve_compteur n'a pas été supprimé."
  	end
    redirect_to @printer
  end

	def update
    @releve_compteur = ReleveCompteur.find(params[:id])
    @printer = Printer.find(@releve_compteur.printer_id)
    if @releve_compteur.update(releve_compteur_params)
      flash[:notice] = "Incident modifié a une valeur 'VRAI'"
      redirect_to @printer	      
    else
    	render 'edit'
    end
	end
	def valide
    @releve_compteur = ReleveCompteur.find(params[:id])
    @printer = Printer.find(@releve_compteur.printer_id)
    if @releve_compteur.update(valide_releve_compteur_params)
      flash[:notice] = "Incident modifié a une valeur 'VRAI'"
      redirect_to @printer	      
    else
    	render 'edit'
    end
	end


private 
	def valide_releve_compteur_params
		params.require(:releve_compteur).permit( :valide_releve_compteurs)
	end
	def releve_compteur_params
		params.require(:releve_compteur).permit(:description_releve_compteurs, :valide_releve_compteurs, :printer_id)
	end
	def update_description_params
		params.require(:releve_compteur).permit(:description_releve_compteurs, :printer_id)
	end
end
