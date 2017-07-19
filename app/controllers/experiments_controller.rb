class ExperimentsController < ApplicationController

def index
   
end

def create
    @experiment = 
   Experiment.new(experiment_params)
    @scientist_id = params[:scientist_id]
    @scientist = Scientist.find(scientist_id) 
if @experiment.save
    render scientist_path(:scientist)
else 
    render scientist_path(:scientist)
end
end

private

    def experiment_params
        params.require(:experiment).permit(:budget, :summary)
    end

end
