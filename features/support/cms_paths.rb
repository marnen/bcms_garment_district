module CmsPaths
  def method_missing(name, *args, &block)
    if name.to_s =~ /_(url|path)\Z/
      begin
        Cms::Engine.routes.url_helpers.send name, *args
      rescue NoMethodError
        begin
          BcmsGarmentDistrict::Engine.routes.url_helpers.send name, *args
        rescue NoMethodError
          super
        end
      end
    else
      super
    end
  end
end

World CmsPaths