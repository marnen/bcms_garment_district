module BcmsGarmentDistrict
  class MarkdownBlock < ActiveRecord::Base
    acts_as_content_block
    validates_presence_of :name, :content
  end
end
