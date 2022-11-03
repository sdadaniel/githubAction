#!/bin/bash
echo "make Json File"
mkdir -p elasticbeanstalk
touch elasticbeanstalk/Dockerrun.aws.json

echo "{
  \"AWSEBDockerrunVersion\": "1",
  \"Image\": {
    \"Name\": \"$1\",
    \"Update\": \"true\"
  },
  \"Ports\": [
    {
      \"ContainerPort\": 3000,
      \"HostPort\": 80
    }
  ]
}
" > elasticbeanstalk/Dockerrun.aws.json