# Chef practice

vagrant up
vagrant ssh-config --host opscode-test >> ~/.ssh/config

bundle install
bundle exec knife solo opscode-test

## production
berks vendor cookbooks --except development


## serverspec learning
初期設定
serverspec-init
linux / ssh / no vagrant / opscode-test
