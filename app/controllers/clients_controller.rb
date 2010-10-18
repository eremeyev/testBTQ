class ClientsController < ApplicationController
  require 'product_service'
  require 'rexml/document'
  include REXML
  
  def information
    @client = Client.new
  end

  def processing
    @client = Client.new(params[:client])
    if @client.save
      #proc = Proc.new { |options| options[:builder].instruct!(:xml-stylesheet, type=>'text/xsl', :href=>'/public/stylesheets/resp.xsl') }
      #@resp = ProductService.get(@client.to_xml :procs => [proc])
      @resp = ProductService.get(@client.to_xml)
      @root = Document.new(@resp).root
    else
      render :action => "information"
    end
  end
end
