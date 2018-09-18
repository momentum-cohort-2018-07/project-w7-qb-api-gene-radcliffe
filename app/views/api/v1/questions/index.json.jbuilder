json.questions @questions.order(created_at: :desc) do |question|
    json.question do
        json.id question.id 
        json.user_id question.user.id
        json.username question.user.username
        json.title question.title
        json.body question.body
        json.created_at question.created_at
        json.updated_at question.updated_at
        json.answers question.answers.count
        json.question_answered :true if question.answers_count > 0
    end
    
    
  
end
  
