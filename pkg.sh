#!/bin/sh
awk '
{
    if ($0 ~ /Package:/) {
        Package = $2
    }
    if ($0 ~ /Version:/) {
        Version = $2
    }
}
END {
    print Package "_" Version ".tar.gz"
}
' DESCRIPTION
