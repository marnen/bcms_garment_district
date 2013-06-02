require 'browsercms'
module BcmsGarmentDistrict
  class Engine < ::Rails::Engine
    isolate_namespace BcmsGarmentDistrict
		include Cms::Module
  end
end
