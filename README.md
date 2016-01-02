# opscode practice

## develop
~~~
vagrant up
vagrant ssh-config --host opscode-test >> ~/.ssh/config
~~~

### chef
#### initial setting
~~~
bundle install
bundle exec berks vendor cookbooks
~~~

~~~
bundle exec knife solo bootstrap opscode-test
~~~

### serverspec
#### initial setting
~~~
bundle install
bundle exec serverspec-init
linux / ssh / no vagrant / opscode-test
~~~

~~~
bundle exec rake spec:opscode-test
~~~

### packer
#### initial setting
~~~
brew install packer
packer  //<- check
~~~

~~~
packer validate packer/opscode-test.json
packer build \
-var 'aws_access_key=********************' \
-var 'aws_secret_key=****************************************' \
packer/opscode-test.json
~~~

## production
~~~
(chefdk install)
berks vendor cookbooks --except development
...coming soon...
~~~
