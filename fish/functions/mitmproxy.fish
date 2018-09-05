function mitmproxy --description 'Start mitmproxy docker'
  docker run --rm -it --volume=$HOME/.mitmproxy:/home/mitmproxy/.mitmproxy -p 8080:8080 mitmproxy/mitmproxy $argv
end
