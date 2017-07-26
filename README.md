# ec2_amitools

Install Amazon's EC2 AMI Tools as gem.

## Origins

Source files for this library were taken from here: http://s3.amazonaws.com/ec2-downloads/ec2-ami-tools-1.5.7.zip
More info about original installation from AWS: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/set-up-ami-tools.html

## Dependencies

- curl
- gzip
- mkfifo
- openssl
- rsync
- Ruby 2.0.0 or later
- tee

For more info take a look at: https://github.com/sfate/ec2_amitools/blob/master/readme-install.txt

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ec2_amitools'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ec2_amitools

## Usage

http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-tools-commands.html

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sfate/ec2_amitools

## License - Amazon Software License

http://github.com/sfate/ec2_amitools/blob/master/license.txt
