#
# Cookbook Name:: AET
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


include_recipe "apache2"
include_recipe "mysql::client"
include_recipe "apache2::mod_php5"
include_recipe "php"


# web_app "my_site" do
#       server_name node['hostname']
#       server_aliases [node['fqdn'], "my-site.example.com"]
#       docroot "/srv/www/my_site"
#       cookbook 'apache2'
# end


# include_recipe "php::mod_php5"

# default['apache']['default_site_name'] = 'phpapp'
# default['apache']['default_site_enabled'] = true

# apache_site "default" do
#   enable true
# end