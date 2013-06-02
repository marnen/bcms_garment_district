Rails.application.routes.draw do

  mount BcmsGarmentDistrict::Engine => "/bcms_garment_district"

  mount_browsercms
end
