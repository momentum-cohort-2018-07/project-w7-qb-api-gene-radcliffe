json.array! @questions do |question|
    json.extract!(question, :id, :title, :body)
    if @questions.answers then
      @answers = @questions.answers
     json.array! @answers do |answers|
        json.extract!(answers, :user_id, :title, :body)
     end
    end

end
  