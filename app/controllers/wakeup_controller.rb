class WakeupController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:index]
  def index
    Rails.logger.warn "Wakeup running"
  end
end
