require_dependency "bcms_garment_district/application_controller"

module BcmsGarmentDistrict
  class PreviewsController < ApplicationController

    layout :if_not_xhr

    def create
      @content_block = MarkdownBlock.new params[:markdown_block]
      render :template => 'bcms_garment_district/markdown_blocks/render'
    end

    private

    def if_not_xhr
      !request.xhr?
    end
  end
end