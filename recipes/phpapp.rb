#
# Cookbook Name:: apache-php
# Recipe:: phpapp
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

depends "apache2"


directory '/var/www/myapp' do
    mode '755'
end

template '/etc/apache2/sites-available/default-site' do
  source 'default-site.conf.erb'
end

service 'apache' do
  action :restart
end