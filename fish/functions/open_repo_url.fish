# Opens the repo's URL in your default browser
function open_repo_url
  set repo_url (git ls-remote --get-url origin)

  if not string match 'http*' $repo_url
    set repo_url 'https://'(git ls-remote --get-url origin | cut -f 2 -d @ | sed -e "s/:/\//g")
    echo $repo_url
  end

  open $repo_url
end
