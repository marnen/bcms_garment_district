module CmsPaths
  def cms
    Cms::Engine.routes.url_helpers
  end
end

World CmsPaths