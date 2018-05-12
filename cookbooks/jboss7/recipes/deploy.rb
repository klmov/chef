#
# Cookbook:: task2_jboss5
# Recipe:: deploy
#
# Copyright:: 2018, The Authors, All Rights Reserved.

remote_file "#{node['jboss7']['jboss_home']}/standalone/deployments/sample.war" do
  source "#{node['war_file']}"
  notifies :restart, 'service[jboss7]', :delayed
end
