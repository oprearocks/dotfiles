# Opens the repo's URL in your default browser
function mongodb
  if $argv[0]
    docker rm -f $argv[0]
    docker run -d --publish-all --name $argv[0] mongo
  else
    docker rm -f mongodb
    docker run -d -p 27017:27017 --name mongodb mongo
  end
end
