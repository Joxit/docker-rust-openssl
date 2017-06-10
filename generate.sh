#!/bin/bash
first_line=true
while read line || [ -n "$line" ]; do
  docker_version="${line%%,*}"
  rust_version="${line##**,}"
  if [ $first_line = false ] && [ -n "${docker_version}" ] && [ -n "${rust_version}" ]; then
    echo "Generating joxit/rust-openssl:${docker_version} based on rust ${rust_version}"
    mkdir -p $docker_version
    cat template/Dockerfile | sed "s/\${rust_version}/${rust_version}/" > ${docker_version}/Dockerfile
    mkdir -p $docker_version/onbuild
    cat template/onbuild/Dockerfile | sed "s/\${docker_version}/${docker_version}/" > ${docker_version}/onbuild/Dockerfile
    git add ${docker_version}
    url_list="-\ \ \ [\`${docker_version}-onbuild\` (${docker_version}/onbuild/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/${docker_version}/onbuild)\n${url_list}"
    url_list="-\ \ \ [\`${docker_version}\` (${docker_version}/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/${docker_version})\n${url_list}"
  fi
  first_line=false
done < versions.csv

echo "Create joxit/rust-openssl:latest based on ${docker_version}"
rm -f latest
ln -s ${docker_version} latest
git add latest
url_list="$(echo ${url_list} | head -c -3)"
cat template/README.md \
  | sed "s?\${url_list}?${url_list}?" \
  | sed "s?\`${docker_version}-onbuild\`?\`${docker_version}-onbuild\`, \`onbuild\`?" \
  | sed "s?\`${docker_version}\`?\`${docker_version}\`, \`latest\`?" > README.md

git add README.md versions.csv