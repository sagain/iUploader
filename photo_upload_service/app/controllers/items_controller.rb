class ItemsController < ApplicationController
  
  # List all items
  #
  def index
    @items = Item.find(:all)
    
    respond_to do |format|
      format.html
      format.xml { render :xml => @items.to_xml }
    end
  end
  
end
