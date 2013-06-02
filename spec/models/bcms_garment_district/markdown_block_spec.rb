require 'spec_helper'

module BcmsGarmentDistrict
  describe MarkdownBlock do
    context 'general properties' do
      it 'should be a type of content block' do
        MarkdownBlock.new.should be_a_kind_of Cms::Acts::ContentBlock::MacroMethods::InstanceMethods
      end

      it { should validate_presence_of :name }
      it { should validate_presence_of :content }
    end
  end
end