require_dependency "bcms_garment_district/application_controller"

module BcmsGarmentDistrict
  class MarkdownBlocksController < Cms::ContentBlockController
    before_filter :check_preview, :only => [:create, :update]

    private

    def check_preview
      if params[:preview]
        @content_block = MarkdownBlock.new params[:markdown_block]
        render :template => 'bcms_garment_district/markdown_blocks/render'
      else
        true
      end
    end
  end
end
