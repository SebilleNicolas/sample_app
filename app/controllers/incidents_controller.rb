class IncidentsController < ApplicationController
	def index
		@incidents = Incident.all
		#@printer = Printer.find(params[:id])
		@titre = "Liste des Incidents"
		@printer = Printer.find(params[:id])
	end
	def home
		@incidents = Incident.all
		@title = "Tous les incidents"
	end
	def new
		@incident = Incident.new
	end
	def create
		
		@incident = Incident.new(incident_params)
		@incident.save
		respond_to do |format|
			if @incident.save
				flash[:notice] = "L'incident a bien été créé."
				format.html {redirect_to '/'}
			else
				flash[:alert] = "L'incident n'a pas été créé"
			end
		end
	end
	def showAllIncidents
		@incidents = Incident.all
	end
  def show
    @incident = Incident.find(params[:id])
    @titre = "Incident"
  end

	

	def incident_params
		params.require(:incident).permit(:codeIncident, :intituleIncidents, 
			:descriptionIncidents, :solutionIncidents, :valideIncidents, :printer_id )
	end

end


#params.require(:employee).permit( :nomEmployees, :prenomEmployees ,  :manager_id => @manager.id)
