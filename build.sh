#!/bin/bash

source ./variables

PKG_NAME="$1"; shift

if [[ -z "$PKG_NAME" ]]; then
	echo "No package specified."
	exit 1
fi

cd "$PKG_NAME"

makechrootpkg -cur "$CHROOT_DIR"
