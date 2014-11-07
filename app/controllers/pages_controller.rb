class PagesController < ApplicationController
  def home
    @titre = "Accueil"
    @incident = Incident.new
    @incidents = Incident.all
    @consommable = Consommable.new
    @consommables = Consommable.all
  end

  def about
	  @titre = "A propos"
  end

  def contact
  	@titre = "Contact"
  end

  def profil
  	@titre = "Profil"
  end
  def recherche
    @titre = "Recherche"
  end
  def inscription
    @titre = "Inscription"
    @user = User.find(current_user.id)
    @users = User.all
    @incident = Incident.new
    @incidents = Incident.all
    @consommable = Consommable.new
    @consommables = Consommable.all
  end
  def edit
    @titre = "Inscription 2"
  end
  def ajouterImprimante
    @printer = Printer.new
  end
  def listeImprimante
    @printers = Printer.all
  end

  
   
end
