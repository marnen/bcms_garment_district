require 'spec_helper'

module BcmsGarmentDistrict
  describe MarkdownBlock do
    it 'should be a type of content block' do
      MarkdownBlock.new.should be_a_kind_of Cms::Acts::ContentBlock::MacroMethods::InstanceMethods
    end
  end
end