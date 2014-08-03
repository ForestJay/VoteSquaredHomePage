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

# Make sure we have the needed files!
file_list = ['index.html','favicon.ico','Logo.png','twitter-logo.png','fb-logo.png','g+-logo.png']
  
file_list.each do |file|
  cookbook_file "/var/www/html/#{file}" do 
    source file 
    mode "0644"
  end  
end