# env-dependencies [![Gem version](http://img.shields.io/gem/v/env-dependencies.svg?style=flat-square)](http://rubygems.org/gems/env-dependencies)

Ruby gem for defining which environment variables must be set in order for your Rails application to function properly.

## Installation

Add this line to your application's `Gemfile`:

```ruby
gem 'env-dependencies'
```

And then execute:

```bash
$ bundle install
```

## Usage

Define an `env_dependencies` array in `config/application.rb` like so:

```ruby
class Application < Rails::Application
  config.env_dependencies = [
    "CDN_URL",
    "JAVA_HOME",
    "ROLLBAR_ACCESS_TOKEN",
    "UI_DIR"
  ]
end
```

When your Rails application starts, an error will be raised immediately if any environment variables are not set. A nice precautionary measure!

## Related

If you find this gem useful, you may also like [path-dependencies](https://github.com/lukehorvat/path-dependencies).
