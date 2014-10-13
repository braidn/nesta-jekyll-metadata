# Nesta::Plugin::Jekyll::Metadata

Plugin for the great [Nesta CMS][1] which makes moving from Jekyll to Nesta
an absolute breeze. Nesta's expected frontmatter does not include the [dashes that Jekyll does][3].
In addition, many writing platforms for the web like [Prose.io][2] format
their data in the same fashion as Jekyll. This formatter will ignore all dashes at the
beginning and end of the first paragraph (where the metadata belongs) and processes everything
inbetween.

Requires Nesta 0.9.12 or greater

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nesta-plugin-jekyll-metadata'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nesta-plugin-jekyll-metadata

## Contributing

1. Fork it ( https://github.com/[my-github-username]/nesta-plugin-jekyll-metadata/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

[1]: http://nestacms.com/
[2]: http://prose.io/#about
[3]: http://jekyllrb.com/docs/frontmatter/
