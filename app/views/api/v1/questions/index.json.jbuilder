json.questions @questions do |question|
    json.question do
        json.id question.id 
        json.user_id question.user_id
        json.username question.user.username
        json.title question.title
        json.body question.body
        json.created_at question.created_at
        json.updated_at question.updated_at
        json.answers question.answers.count
    end
    
    
  
end
  
