require "application_responder"

class ApplicationController < ActionController::Base  
  protect_from_forgery  
  check_authorization

  self.responder = ApplicationResponder

  respond_to :html
end
