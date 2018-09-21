class Api::V1::AnswersController < ApplicationController
    # skip_before_action :authenticate, only: :create
#/api/v1/questions/:question_id/answers
    def create
      
       
        question = Question.find(params["question_id"])

        answers = question.answers
        #fetch answer data (title, body, and the id of the user answering the question)  
        answer = answers.new(answer_params)

        # question = user.questions.find(params[:question_id])
        # answer = question.answers.new(answer_params)
        # answer.user_id = user.id
        answer.question_id = params[:question_id]
        if answer.save
            
            userWhoAnswered = User.find(params[:answer][:user_id])
            UserMailer.answer(userWhoAnswered).deliver_now
            notification = Notification.new()
            message = "#{userWhoAnswered.username} has answered your question"
            notification.message= message
            notification.message_read = false
            notification.messageable_type= "Question"
            notification.messageable_id = params[:question_id]
            if !notification.save
               notificationerror = notification.errors.messages 
            end
            render :json =>{
                :status => :ok,
                :message => "saved",
                :errors => notificationerror}
        else  
            render :json =>{
                :status => :bad_request,
                :message => "error saving",
                :errors => answer.errors.messages,
                :notification_errors => messageable_type}
        end
    end
    def show

    end
    def index
        #localhost:3000/api/v1/users/1/answers
        #localhost:3000/api/v1/questions/:question_id/answers
        #questions id must be a valid id related to a question


            @answers = Answer.find_by user_id: params[:user_id]  if params[:user_id] != nil
            @answers = Answer.where answerable_id: params[:question_id] if params[:question_id]!=nil
        
       
        render :json =>{
            :status => :ok,
            :message => @answers}
        # render 'api/v1/answers/index'
    end
  
    def answer_params
        params.require(:answer).permit(:title, :body, :user_id)
    end
   
    def notification_params
        params.permit(:message, :messageable_type, :messageable_id, :message_read)

    end
end
