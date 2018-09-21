json.user do
    json.userid @user.id
    json.username @user.username
    json.questions_total @user.questions.count
    json.answers_total @user.answers.count
end