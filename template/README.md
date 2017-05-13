# docker-rust-openssl

## Supported tags and respective `Dockerfile` links

${url_list}

## What is rust ?

**Rust** is a systems programming language that runs blazingly fast, prevents segfaults, and guarantees thread safety.
More information on [rust-lang.org](https://www.rust-lang.org/) and [GitHub](https://github.com/rust-lang/rust).

## About this image

These images contain the openssl library to use with [openssl crate](https://crates.io/crates/openssl).

The `joxit/rust-openssl:latest` tag will always point the latest stable release.

## Get the docker image

You can get the image in three ways

From sources with this command :

```sh
git clone https://github.com/Joxit/docker-rust-openssl.git
docker build -t joxit/rust-openssl docker-rust-openssl/latest
```

Or build with the url :

```sh
docker build -t joxit/rust-openssl github.com/Joxit/docker-rust-openssl#master:latest
```

Or pull the image from [docker hub](https://hub.docker.com/r/joxit/rust-openssl/) :

```sh
docker pull joxit/rust-openssl:latest
```
