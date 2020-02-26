#!/bin/bash

## exists_dir returns True if file exists and is a directory.
exists_dir() {
  [[ -d "$1" ]]
}

## exists_dir returns True if file exists and is a regular file.
exists_file() {
  [[ -f "$1" ]]
}

is_integer() {
  [[ "$1" =~ ^-?[0-9]+$ ]]
}

## if all specified commands are found and executable
found_executable_command() {
  command -v "$1" > /dev/null 2>&1
}
