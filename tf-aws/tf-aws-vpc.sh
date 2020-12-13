#!/bin/bash -e

cat > $3 << EOM
resource "aws_vpc" "$1" {
  cidr_block = "$2"
}
EOM

