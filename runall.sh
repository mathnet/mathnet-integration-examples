#!/usr/bin/env bash

for solution in ./**/*.sln; do
	DIR="$(dirname "${solution}")" ; FILE="$(basename "${solution}")"
	echo ""
	echo "Solution $FILE in $DIR:"
	pushd "$DIR"
	if [[ $DIR == *"legacy"* ]]; then
		echo "Legacy Style Project: skipped, please build run manually"
	else
		[[ -f ".config/donet-tools.json" ]] && dotnet tool restore
		dotnet run
	fi
	popd
done
