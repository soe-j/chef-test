#!/bin/bash

cd /tmp/serverspec
sudo /opt/chef/embedded/bin/gem install serverspec
sudo /opt/chef/embedded/bin/rake spec:localhost
