class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
    before_action :set_default_response_format, :validate_auth_token
    protect_from_forgery with: :null_session

    # def authorized?(user_id)
    #     if @loggedin_user.blank? || @loggedin_user.id.to_s != user_id
    #         @errors = ['You are not authorized to perform this action']
    #         render file: 'users/user.json', content_type: 'application/json', status: :forbidden
    #         return false
    #     end

    #     return true
    # end

    private

    def set_default_response_format
        request.format = :json if is_api_path
    end

    def validate_auth_token
        # path = request.path

        # return if path.downcase.start_with?('/admin')
        # return if path.downcase.start_with?('/users/sign_in')
        # return if path.downcase.start_with?('/users/verify_otp')
        # return if path.downcase.start_with?('/users/resend_otp')
        # return if path.downcase.start_with?('/signature_cards/submit_transaction')

        # auth_token = bearer_token
        # u = get_user(auth_token)
        # if u.present?
        #     @loggedin_user = u
        # else
        #     render plain: 'unknown user', status: :forbidden
        #     return
        # end
    end

    def is_api_path
        return false if request.path.downcase.start_with?('/admin')
        return true
    end

    def get_user(token)
        return nil if token.blank?

        key = "user-#{token}"
        Rails.cache.fetch(key, expires_in: 5.minutes) do
            User.find_by_auth_token(token)
        end
    end

    def bearer_token
        pattern = /^Bearer /
        header  = request.headers['Authorization']
        header.gsub(pattern, '') if header && header.match(pattern)
    end
end
