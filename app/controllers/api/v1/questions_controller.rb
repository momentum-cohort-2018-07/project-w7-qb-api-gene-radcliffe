class Api::V1::QuestionsController < ApplicationController
 skip_before_action :authenticate, only: [:index, :show]

    def index
        
        
        #/api/v1/questions (works for unauthenticated, will throw an exception if it only returns 1 question to the jbuilder) 
        @questions = Question.where user_id: params[:user_id] if params[:user_id] !=nil
        @questions = Question.all if params[:user_id] == nil
        
       
       render 'api/v1/questions/index.json'
        
    end

    def user
    end

    def show
       
        @question = Question.find(params[:id])
        render 'api/v1/questions/show.json'
       
    end
    def create 
        
       # /api/v1/users/:user_id/questions --works
        question = Question.new(question_params)
        question.user = set_user
        if question.save
            @question = question
            #render 'api/v1/questions/show.json'
            render :json => {
                :status => :ok, 
                :message => "saved"}
        else 
            render :json => {
                :status => :bad_request, 
                :message => "saving error",
                :errors => question.errors.messages}
        end
    end
    private

    def question_params
        params.require(:question).permit(:title, :body, :user_id, :published_date)
    end
   
end
