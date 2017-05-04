function ecr-login --description 'Get AWS ECR login for configured account'
  ~/Library/Python/3.6/bin/aws ecr get-login --region $argv
end
