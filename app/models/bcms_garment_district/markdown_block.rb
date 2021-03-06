require 'maruku'

module BcmsGarmentDistrict
  class MarkdownBlock < ActiveRecord::Base
    acts_as_content_block
    validates_presence_of :name, :content

    def to_html
      Maruku.new(content).to_html.html_safe
    end
  end
end
