# Chef practice

vagrant up
vagrant ssh-config --host chef-test >> ~/.ssh/config

bundle install
bundle exec knife solo chef-test
