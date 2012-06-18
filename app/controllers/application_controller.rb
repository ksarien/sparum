require "application_responder"

class ApplicationController < ActionController::Base  
  protect_from_forgery    

  before_filter :authenticate_user!, except: ['index', 'show'] 

  #load_and_authorize_resource

  self.responder = ApplicationResponder

  respond_to :html
end
