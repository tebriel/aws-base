#
# Cookbook Name:: aws-base
# Recipe:: zk
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file '/etc/dd-agent/conf.d/zk.yaml' do
  notifies :restart, 'service[datadog-agent]', :delayed
end
