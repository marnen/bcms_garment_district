class CreateBcmsGarmentDistrictMarkdownBlocks < ActiveRecord::Migration
  def change
    Cms::ContentType.create!(:name => "BcmsGarmentDistrict::MarkdownBlock", :group_name => "BcmsGarmentDistrict")
    create_content_table :bcms_garment_district_markdown_blocks, :prefix=>false do |t|
      t.string :name, :null => false
      t.text :content, :size => (64.kilobytes + 1), :null => false

      t.timestamps
    end
  end
end
