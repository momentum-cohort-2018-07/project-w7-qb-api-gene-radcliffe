# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all


    a = 0;
    user = "GeneRadciffe1" 
    email = "email1" +"@yahoo.com"
    usergene = User.create!(username: user, password: "password", email: email)
    10.times do
        question = usergene.questions.create
        question.title = "question number #{a +1}"
        question.body = "##Hello"
        question.published_date = Time.now
        question.save
    end

    user = "mattRadciffe1" 
    email = "mattemail" +"@yahoo.com"
    usermatt = User.create!(username: user, password: "password", email: email)

    10.times do
        question = usermatt.questions.create
        question.title = "question number #{a +1}"
        question.body = "##Hello"
        question.published_date = Time.now
        question.save
    end
    2.times do
        question = usergene.questions.first
        answer = question.answers.create
        answer.title = "this is an answer #{a +1}"
        answer.body = "this is the body #{a+2 }"
        answer.user_id= usergene.id
        answer.save

        question = usergene.questions.second
        answer = question.answers.create
        answer.title = "this is an answer #{a +1}"
        answer.body = "this is the body #{a+2 }"
        answer.user_id= usergene.id
        answer.save
    end
    #####################

    user = "roseRadciffe1" 
    email = "roseemail" +"@yahoo.com"
    userrose = User.create!(username: user, password: "password", email: email)
    10.times do
        question = userrose.questions.create
        question.title = "question number #{a +1}"
        question.body = "##Hello"
        question.published_date = Time.now
        question.save
    end

    2.times do
        question = usermatt.questions.first
        answer = question.answers.create
        answer.title = "this is an answer #{a +1}"
        answer.body = "this is the body #{a+2 }"
        answer.user_id= userrose.id
        answer.save

        question = usermatt.questions.second
        answer = question.answers.create
        answer.title = "this is an answer #{a +1}"
        answer.body = "this is the body #{a+2 }"
        answer.user_id= userrose.id
        answer.save
    end

    ###############
    user = "edwardRadciffe1" 
    email = "edwardemail" +"@yahoo.com"
    usered = User.create!(username: user, password: "password", email: email)
    10.times do
        question = usered.questions.create
        question.title = "question number #{a +1}"
        question.body = "##Hello"
        question.published_date = Time.now
        question.save
    end
    2.times do
        question = userrose.questions.first
        answer = question.answers.create
        answer.title = "this is an answer #{a +1}"
        answer.body = "this is the body #{a+2 }"
        answer.user_id= usered.id
        answer.save

        question = userrose.questions.second
        answer = question.answers.create
        answer.title = "this is an answer #{a +1}"
        answer.body = "this is the body #{a+2 }"
        answer.user_id= usered.id
        answer.save
    end

    2.times do
        question = usered.questions.first
        answer = question.answers.create
        answer.title = "this is an answer #{a +1}"
        answer.body = "this is the body #{a+2 }"
        answer.user_id= usergene.id
        answer.save

        question = usered.questions.second
        answer = question.answers.create
        answer.title = "this is an answer #{a +1}"
        answer.body = "this is the body #{a+2 }"
        answer.user_id= usergene.id
        answer.save
    end

    ##############    
