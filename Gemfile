# A sample Gemfile
source :gemcutter

group :runtime do
  gem 'thor'
  gem 'net-ssh',          :require => 'net/ssh'
  gem 'net-ssh-multi',    :require => 'net/ssh/multi'
  gem 'net-ssh-gateway',  :require => 'net/ssh/gateway'
  gem 'net-scp',          :require => 'net/scp'
  gem 'net-sftp',         :require => 'net/sftp'
end

group :test do
  gem 'rake', '>= 0.8.7'
  gem 'minitest', :require => 'minitest/unit'
  if RUBY_VERSION =~ /^1\.9/
    gem "ruby-debug19", :require => 'ruby-debug'
  else
    gem "ruby-debug"
  end
  gem 'mocha'
end