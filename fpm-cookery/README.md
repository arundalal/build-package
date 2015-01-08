# Package build box

## Description

This box is based on [fpm](https://github.com/jordansissel/fpm) and [fpm-cookery](https://github.com/bernd/fpm-cookery).
It has been created in order to make Debian packaging for Ubuntu much easier. It's using fpm-cookery recipes to make repeatable build processes (package version updates) less painful.

## Requirements

[VirtualBox](https://www.virtualbox.org/)

[Vagrant](http://www.vagrantup.com/)

## Setup
    git clone ssh://git@stash.zalando.net:7999/system/vagrant-packagebuild.git
    cd vagrant-packagebuild

fpm-cookery automatically builds only a package for the distribution/OS where it's running on [source](https://github.com/bernd/fpm-cookery/blob/master/spec/facts_spec.rb#L72), so start the desired OS:

    vagrant up {precise64,trusty64,centos_65}

## How to use

    vagrant ssh {precise64,trusty64,centos_65}
    $ sudo -i
    # cd /vagrant
    /vagrant# cd fpm-recipes/redis/
    /vagrant/fpm-recipes/redis# fpm-cook

## Release package

[Sysdocu](https://sysdocu.zalando.net/Packages-and-Repos/Internal-Repo#Manage-internal-APT-/-RPM-repositories)

## More recipe examples

[https://github.com/bernd/fpm-recipes](https://github.com/bernd/fpm-recipes)

[https://github.com/piavlo/fpm-recipes-piavlo/tree/master/gearmand](https://github.com/piavlo/fpm-recipes-piavlo/tree/master/gearmand)

[https://github.com/gocardless/fpm-recipes](https://github.com/gocardless/fpm-recipes)

[https://github.com/henchmanio/fpm-recipes](https://github.com/henchmanio/fpm-recipes)