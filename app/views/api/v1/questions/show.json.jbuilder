json.question do
    json.id @question.id
    json.title @question.title
    json.body @question.body
    json.published_date @question.published_date
    json.created_at @question.created_at
    json.updated_at @question.updated_at
    json.username @question.user.username
    json.userid @question.user.id
    answers = @question.answers
    
    json.answers answers do |answer|
        json.id answer.id
        json.userid answer.user.id
        json.title answer.title
        json.body answer.body
        json.posted answer.created_at
        json.updated_at answer.updated_at
        json.posted_by answer.user.username
    end
end
