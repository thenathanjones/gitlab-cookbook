#
# Cookbook Name:: gitlab
# Recipe:: default
#
# Copyright 2015, thenathanjones
#
# All rights reserved - Do Not Redistribute
#

package 'openssh-server'
execute 'enable SSH' do
	command 'systemctl enable sshd; systemctl start sshd'
end

package 'postfix'
execute 'enable postfix' do
	command 'systemctl enable postfix; systemctl start postfix'
end

include_recipe 'gitlab::setup_repository'

package 'gitlab-ce' do
  timeout 1200
end

template '/etc/gitlab/gitlab.rb' do
	source 'gitlab.rb.erb'
end

execute "reconfigure Gitlab" do
	command 'gitlab-ctl reconfigure'
end	