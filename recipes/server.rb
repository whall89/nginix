package "git"

log "Well, that was too easy"



include_recipe "nginx::#{node['nginx']['install_method']}"

service 'nginx' do
  supports :status => true, :restart => true, :reload => true
  action   :start
end

node['nginx']['default']['modules'].each do |ngx_module|
  include_recipe "nginx::#{ngx_module}"
end
