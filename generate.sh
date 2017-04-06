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
  fi
  first_line=false
done < versions.csv

echo "Create joxit/rust-openssl:latest based on ${docker_version}"
rm -f latest
ln -s ${docker_version} latest
git add latest