#!/usr/bin/env bash

for solution in ./**/*.sln; do
	DIR="$(dirname "${solution}")" ; FILE="$(basename "${solution}")"
	echo ""
	echo "Solution $FILE in $DIR:"
	pushd "$DIR"
	dotnet run
	popd
done
