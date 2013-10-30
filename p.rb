require 'webrick'
require 'webrick/httpproxy'

s = WEBrick::HTTPProxyServer.new({})

Signal.trap('INT') do
	s.shutdown
end

s.start

# Try this in another terminal
# curl --proxy 0.0.0.0:80 http://www.yahoo.co.jp
