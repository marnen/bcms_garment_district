require 'factory_girl'

FactoryGirl.find_definitions

module FactoryGirl::Shorthand
  def Factory(*args)
    FactoryGirl.create *args
  end
end

World FactoryGirl::Shorthand