#
# Cookbook Name:: nginix
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.


package "git"

log"done!"


include_recipe "nginx::#{node['nginx']['install_method']}"

service 'nginx' do
  supports :status => true, :restart => true, :reload => true
  action   :start
end

node['nginx']['default']['modules'].each do |ngx_module|
  include_recipe "nginx::#{ngx_module}"
end
