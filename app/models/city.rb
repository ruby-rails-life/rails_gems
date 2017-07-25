class City < ActiveYaml::Base
  set_root_path Rails.root.join('db/fixtures')
  set_filename 'cities'

  include ActiveHash::Associations
  include ActiveYaml::Aliases
  belongs_to :country
end
