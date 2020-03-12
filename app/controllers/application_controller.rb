class ApplicationController < ActionController::API

    def secret
        'MoodLog'
    end
    def encode_token(user)
        payload = {user_id: user.id}
        token = JWT.encode(payload, secret, 'HS256')
    end

    def token
        if request.headers['Authorization']
            request.headers['Authorization'].split(' ')[1]
        end
    end

    def decoded_token 
        if token
            JWT.decode(token, secret, true, {algorithm: 'HS256'})
        end
    end

    def active_user
        # byebug
        user_id = decoded_token[0]['user_id']
        User.find(user_id)
    end
end
