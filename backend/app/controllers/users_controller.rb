class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
      end

    def user_auth
      
      user = User.find_by(userName: params[:userName])

      if user && user.authenticate(params[:password])
        payload ={ user_id: user.id }
        hmac_secret = 'S3CR3T'

        token = JWT.encode(payload, hmac_secret, 'HS256')

            render json: { user: UserSerializer.new(user), token:token }
          else
          render json: {error: 'Invaild name or password'}
         
        end  
    end


    def create 
     
        user = User.new(user_params)
        if user.save
        
          payload ={ user_id: user.id }
          hmac_secret = 'S3CR3T'

          token = JWT.encode(payload, hmac_secret, 'HS256')

          render json: { user: UserSerializer.new(user), token:token }
          else
          render json: {error: 'Invaild name or password'}
            
          end  
       end

   
      def show
        
        token = request.headers[:Authorization].split(' ')[1]
        begin
          decoded_token = JWT.decode(token, 'S3CR3T', true, { algorithm: 'HS256' })
          user_id = decoded_token[0]['user_id']
          user = User.find(user_id)
          render json: user
        rescue JWT::DecodeError
          render json: { error: 'Invalid token.'}
        end
      end

      private 

      def user_params
        params.require(:user).permit(:userName, :city, :password)
      end


end
