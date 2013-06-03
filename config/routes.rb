BcmsGarmentDistrict::Engine.routes.draw do
  content_blocks :markdown_blocks
  resource :preview, :only => :create
end
