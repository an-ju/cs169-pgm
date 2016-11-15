class MatchesController < ApplicationController
    include ApplicationHelper
    
    before_filter :check_logged_in, :except => :show
    
    def matches_params
        params.require(:matches).permit(:group_name, :project_name)
    end
    
    def index
    end
    
    def new
        Match.algorithm
        redirect_to '/matches/show'
    end
    
    def show
        @matches = Match.all
        @utility = 20 # SHOULD BE PART OF MATCH MODEL
    end
    
end
