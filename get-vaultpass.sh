#!/bin/bash
KEY=$(git remote get-url origin)
bw get password "${KEY}" > .vaultpass