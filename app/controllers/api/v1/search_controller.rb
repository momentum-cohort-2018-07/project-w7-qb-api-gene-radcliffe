class Api::V1::SearchController < ApplicationController

    def index
       
        @questions = Question.search_partial(params["search"]["query"])
        
        render 'api/v1/search/index.json'
        
    end
end
