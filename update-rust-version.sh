#!/bin/sh

set -eu

if [ $# -ne 1 ]; then
    echo "usage: $0 VERSION" >&2
    exit 64
fi

VERSION=$1

echo "$VERSION" > rust-toolchain
sed -i'' -e "s/RUST_IMAGE=.*/RUST_IMAGE=rust:$VERSION/" Dockerfile
