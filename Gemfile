# A sample Gemfile
source :gemcutter

group :runtime do
  gem 'thor'
  gem 'net-ssh',          '>= 2.0', :require => 'net/ssh'
  gem 'net-ssh-multi',    '>= 1.0', :require => 'net/ssh/multi'
  gem 'net-ssh-gateway',  '>= 1.0', :require => 'net/ssh/gateway'
  gem 'net-scp',          '>= 1.0', :require => 'net/scp'
  gem 'net-sftp',         '>= 1.0', :require => 'net/sftp'
  gem 'parallel',         '>= 0.4.2'
end

group :test do
  gem 'rake', '>= 0.8.7'
  gem 'minitest', :require => 'minitest/unit'
  platforms :ruby_19 do
    gem "ruby-debug19", :require => 'ruby-debug'
    gem 'linecache19', :require => false
  end
  platforms :ruby_18 do
    gem "ruby-debug"
  end
  gem 'mocha'
end