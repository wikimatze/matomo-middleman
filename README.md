# Matomo-Middleman
[![Gem Version](https://badge.fury.io/rb/matomo-middleman.svg)](https://badge.fury.io/rb/matomo-middleman)

It's an extension for the [Middleman](http://middlemanapp.com/) static site generator
to use [Matomo](https://matomo.org/) tracking.


## Installation

Clone the repository `git clone git@github.com:wikimatze/matomo-middleman.git ~/git/matomo-middleman`.
Then add the following line to your `Gemfile`:


```ruby
gem 'matomo-middleman'
```

Run `bundle install`.


## Configuration

In your `config.rb` you can configure the settings as follow:

```ruby
activate :matomomiddleman do |p|
  p.domain = '<your-domain>'
  p.url = '<your-url>'
  p.id = 1
end
```


## Helper

This plugin will add the following helper method:

```erb
<%= matomo %>
```


which will expand to


```erb
<script type="text/javascript">
  var _paq = window._paq = window._paq || [];
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
  var u=(("https:" == document.location.protocol) ? "https" : "http") + "://<your-domain>/<your-url>/";
  _paq.push(['setTrackerUrl', u+'matomo.php']);
  _paq.push(['setSiteId', 1]);
  var d=document, g=d.createElement('script'),
  s=d.getElementsByTagName('script')[0];
  g.async=true;
  g.src=u+'matomo.js';
  s.parentNode.insertBefore(g,s);
  })();
</script>
```

