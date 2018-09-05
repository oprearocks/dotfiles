function mitmweb --description 'Start mitmweb docker'
  docker run --rm -it --volume=$HOME/.mitmproxy:/home/mitmproxy/.mitmproxy -p 8080:8080 -p 127.0.0.1:8081:8081 mitmproxy/mitmproxy mitmweb --web-iface 0.0.0.0
end
