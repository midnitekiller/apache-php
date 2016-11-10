#
# Cookbook Name:: AET
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


#include_recipe "php"
# include_recipe "apache2::default"
# include_recipe "apache2::mod_php5"
# include_recipe "apache2::mod_rewrite"


# execute 'test' do
# 	command 'apt-get install -y apache2'
# 	action :nothing
# end

include_recipe "apache2"
include_recipe "apache2::mod_rewrite"
include_recipe "apache2::mod_php5"
include_recipe "php"