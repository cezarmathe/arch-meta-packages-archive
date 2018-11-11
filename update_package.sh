#!/bin/bash

source ./variables

PACKAGE_NAME="$1"; shift

if [[ -z "$PACKAGE_NAME" ]]; then
	echo "No package name specified"
	exit 1
fi

./build.sh "$PACKAGE_NAME"

cd "$PACKAGE_NAME"
repo-add "$LOCAL_REPO_FILE" *.pkg.tar.xz
cp *.pkg.tar.xz "$LOCAL_REPO_DIR/"

scp "$LOCAL_REPO_DIR/*" "$REMOTE_REPO_USER@$REMOTE_REPO_IP:$REMOTE_REPO_DIR"


