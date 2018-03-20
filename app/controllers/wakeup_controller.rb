class WakeupController < ApplicationController
  def index
    Rails.logger.warn "Wakeup running"
  end
end
