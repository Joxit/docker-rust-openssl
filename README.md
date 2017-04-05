# docker-rust-openssl

## Supported tags and respective `Dockerfile` links

-   [`1.16`, `latest` (1.16/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.16)
-   [`1.16`, `onbuild` (1.16/onbuild/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.16/onbuild)
-   [`1.15` (1.15/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.15)
-   [`1.15-onbuild` (1.15/onbuild/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.15/onbuild)
-   [`1.14` (1.14/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.14)
-   [`1.14-onbuild` (1.14/onbuild/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.14/onbuild)
-   [`1.13` (1.13/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.13)
-   [`1.13-onbuild` (1.13/onbuild/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.13/onbuild)
-   [`1.12` (1.12/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.12)
-   [`1.12-onbuild` (1.12/onbuild/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.12/onbuild)
-   [`1.11` (1.11/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.11)
-   [`1.11-onbuild` (1.11/onbuild/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.11/onbuild)
-   [`1.10` (1.10/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.10)
-   [`1.10-onbuild` (1.10/onbuild/Dockerfile)](https://github.com/Joxit/docker-rust-openssl/tree/master/1.10/onbuild)

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
docker build -t joxit/rust-openssl docker-rust-openssl/1.16
```

Or build with the url :

```sh
docker build -t joxit/rust-openssl github.com/Joxit/docker-rust-openssl#master:1.16
```

Or pull the image from [docker hub](https://hub.docker.com/r/joxit/rust-openssl/) :

```sh
docker pull joxit/rust-openssl:1.16
```
