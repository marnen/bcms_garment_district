require 'spec_helper'

module BcmsGarmentDistrict
  describe MarkdownBlock do
    describe 'general properties' do
      it 'should be a type of content block' do
        MarkdownBlock.new.should be_a_kind_of Cms::Acts::ContentBlock::MacroMethods::InstanceMethods
      end

      it { should validate_presence_of :name }
      it { should validate_presence_of :content }
    end

    describe '#to_html' do
      it 'should return the content rendered into HTML' do
        content = 'Here is some *Markdown*.'
        block = FactoryGirl.create :markdown_block, :content => content
        block.to_html.should == Maruku.new(content).to_html
      end
    end
  end
end