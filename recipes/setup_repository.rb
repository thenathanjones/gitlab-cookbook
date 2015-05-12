if platform_family?('rhel')
  execute 'add YUM repository' do
    command 'curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash'
  end
elsif platform_family?('debian')
  execute 'add DEB repository' do
    command 'curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash'
  end
end