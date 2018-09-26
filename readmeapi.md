# Question Box API

> All API's uses Token authentication. Use the Login API to perform a basic authentication procedure and it will return a user token

## Posting Questions - API

* To view all questions you may use:
```
api/v1/questions 

```
* To view questions associated with a User, pass a user id query string to the api. 
```
api/v1/questions?user_id=id - returns questions associated with the user


```
* To post new questions, use the following api:

```
POST api/v1/users/user_id/questions
JSON:
{
question: { title: title,
            body: body,
            publish_date: publish_date
        }
}
```
> Note: A Token must be provided in the request header to authenticate and allow requests.


---

## Posting Answers - API

* To post an answer to a question:
```
POST api/v1/questions/"question_id/answers
JSON:
{
answer: {title: title,
        body: body,
        user_id: userid}
}

```

> Note: A Token must be provided in the request header to authenticate and allow requests. 


---
## Signup

 * To signup as a new user:
 
 ```
 POST /api/v1/users",
 JSON:
 {
     user: {username: username,
            email: email,
            password: password}
}
 ```
>  ##### Successful signup returns:
>  {
            :status => :ok,
            :token => user.auth_token
    }
    


>   ##### Unsuccessful signup returns:
>    {    
            :status => :bad_request, 
            :message => errors_messages
    }
    
## Login
* Uses Basic Authentication to login. Returns json object.

```
POST api/v1/users/login
JSON(return):

{
    :status => :ok,
    :id =>  user_id,
    :username => user_username,
    :token => user_auth_token,
    :joined => user_created_at
}
```
