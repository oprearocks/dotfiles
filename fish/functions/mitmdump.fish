function mitmdump --description 'Start mitmdump docker'
  docker run --rm -it --volume=$HOME/.mitmproxy:/home/mitmproxy/.mitmproxy -p 8080:8080 mitmproxy/mitmproxy mitmdump --set ssl_insecure=true
end
