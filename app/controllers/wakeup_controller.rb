class WakeupController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:index]
  def index
    Rails.logger.warn "Wakeup running"
  end
end
