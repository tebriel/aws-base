package "git"
package "python-pip"

user "sipeater"
directory '/opt/sip-eater' do
  owner "sipeater"
end

git '/opt/sip-eater' do
  repository "https://github.com/tebriel/sip-eater2.git"
  revision "master"
  action :sync
  user "sipeater"
end

execute "pip install -r /opt/sip-eater/requirements.txt"

cookbook_file "/etc/init/sipeater.conf"

# Stop it if it's running
execute "stop sipeater" do
  ignore_failure true
end

execute "start sipeater"
