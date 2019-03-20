docker run \
  --name artifactory \
  -d \
  --restart=unless-stopped \
  -p 8081:8081 \
  -u 997:993 \
  -v /opt/artifactory:/var/opt/jfrog/artifactory \
  -e EXTRA_JAVA_OPTIONS='-Xms512m -Xmx2g -Xss256k -XX:+UseG1GC' \
  docker.bintray.io/jfrog/artifactory-oss