#
# Cookbook Name:: aws-base
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file '/etc/dd-agent/conf.d/kafka.yaml' do
  notifies :restart, 'service[datadog-agent]', :delayed
end
