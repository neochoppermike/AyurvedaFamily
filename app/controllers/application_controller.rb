class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


 private

 def authenticate
   authenticate_or_request_with_http_basic('Administration') do |username, password|
   	 if Rails.env.production?
   	 	username == ENV['USERNAME'] && password == ENV['PASSWORD']
   	 else 
       username == 'admin' && password == 'password'
     end
   end
 end

end
