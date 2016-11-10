#
# Cookbook Name:: AET
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


include_recipe "php"
include_recipe "apache2::default"
include_recipe "apache2::mod_php5"
include_recipe "apache2::mod_rewrite"