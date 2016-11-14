name 'AET'
maintainer 'Lief Jill Colegado'
maintainer_email 'lief@mattermark.us'
license 'all_rights'
description 'Installs/Configures AET Apache + PHP'
long_description 'Installs/Configures AET'
version '0.1.0'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/AET/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
# source_url 'https://github.com/<insert_org_here>/AET' if respond_to?(:source_url)


%w{ php openssl }.each do |cb|
  depends cb
end

depends 'apt', '= 3.0.0'
depends 'build-essential', '= 3.2.0'
# depends "git"
# depends "vim"
depends "apache2"
depends "php"
# depends "mysql2_chef_gem"


%w{ debian ubuntu windows centos redhat scientific oracle }.each do |os|
  supports os
end	