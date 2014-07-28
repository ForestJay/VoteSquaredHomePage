#
# Cookbook Name:: VoteSquaredHomePage
# Recipe:: default
#
# Copyright 2014, Vote Squared
#


# httpd should be installed
package "httpd" do
  action :install
end

# The service should be enabled and started
service "httpd" do
  action [:enable, :start]
end

cookbook_file "/var/www/html/index.html" do 
  source "index.html" 
  mode "0644"
end

cookbook_file "/var/www/html/favicon.ico" do 
  source "favicon.ico" 
  mode "0644"
end

cookbook_file "/var/www/html/Logo.png" do 
  source "Logo.png" 
  mode "0644"
end