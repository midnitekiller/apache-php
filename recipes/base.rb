#
# Cookbook Name:: AET
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


include_recipe "apache2"
include_recipe "mysql::client"
include_recipe "apache2::mod_php5"
include_recipe "php"
#
# include_recipe "php::module_mysql"

web_app "aetdeploy" do
      server_name node['hostname']
      server_aliases [node['fqdn'], "aetdeploy.com"]
      docroot "/var/www/aetdeploy"
      cookbook 'apache2'
end

apache_module "mpm_prefork" do
      enable true
end

apache_module "mpm_event" do
      enable false
end


directory '/var/www/aetdeploy' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

## testing