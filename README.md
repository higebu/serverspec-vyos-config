# serverspec-vyos-config
[![Build Status](https://travis-ci.org/higebu/serverspec-vyos-config.png)](https://travis-ci.org/higebu/serverspec-vyos-config)
[![Code Climate](https://codeclimate.com/github/higebu/serverspec-vyos-config/badges/gpa.svg)](https://codeclimate.com/github/higebu/serverspec-vyos-config)
[![Gem Version](https://badge.fury.io/rb/serverspec-vyos-config.svg)](https://badge.fury.io/rb/serverspec-vyos-config)
[![Dependency Status](https://gemnasium.com/badges/github.com/higebu/serverspec-vyos-config.svg)](https://gemnasium.com/github.com/higebu/serverspec-vyos-config)
[![Downloads](http://ruby-gem-downloads-badge.herokuapp.com/serverspec-vyos-config?type=total&style=flat)](https://rubygems.org/gems/serverspec-vyos-config)

serverspec-vyos-config is a [Serverspec](http://serverspec.org) custom resource type for [VyOS](http://vyos.net/wiki/Main_Page) config.

## Installation

```
$ gem install serverspec-vyos-config
```

## Usage

```
require 'serverspec_vyos_config'

describe vyos_config('service ssh port') do
  it { should be_exists }
  its(:value) { should eq '22' }
end

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
