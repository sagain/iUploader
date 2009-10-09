class AlertsController < ApplicationController
  
  
  # List all alerts
  #
  def index
    @alerts = Alert.find(:all)
    
    respond_to do |format|
      format.html
      format.xml { render :xml => @alerts.to_xml }
    end
  end
  
end
