class PagesController < ApplicationController
  def home
  	@titre = "Accueil"
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
  end
  def inscrip2
    @titre = "Inscription 2"
  end
  
end
