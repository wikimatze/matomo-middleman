# Require core library
require 'middleman-core'

# Extension namespace
class MatomoExtension < ::Middleman::Extension
  option :domain, 'localhost.com', 'An example url for matomo'
  option :url, 'matomo', 'An example path to your matomo installation'
  option :id, 1, 'The id for matomo'

  def after_configuration
    app.config[:matomo_domain] = options.domain
    app.config[:matomo_url] = options.url
    app.config[:matomo_id] = options.id
  end

  helpers do
    def matomo
      <<END
<script type="text/javascript">
  var _paq = window._paq = window._paq || [];
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
  var u=(("https:" == document.location.protocol) ? "https" : "http") + "://#{config[:matomo_domain]}/#{config[:matomo_url]}/";
  _paq.push(['setTrackerUrl', u+'matomo.php']);
  _paq.push(['setSiteId', #{config[:matomo_id]}]);
  var d=document, g=d.createElement('script'),
  s=d.getElementsByTagName('script')[0];
  g.async=true;
  g.src=u+'matomo.js';
  s.parentNode.insertBefore(g,s);
  })();
</script>
END
    end
  end
end

