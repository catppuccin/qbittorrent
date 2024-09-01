_default:
  @just --list

build:
  whiskers templates/config.tera
  whiskers templates/resources.tera
  whiskers templates/stylesheet.tera

compile:
  #!/usr/bin/env bash
  rcc_version=$(rcc --version)
  rcc_major=$(echo $rcc_version | awk '{split($2, a, "."); print a[1]}')
  if [ "$rcc_major" -gt 5 ]; then
    echo "rcc version must be less than 6.0.0"
    exit 1
  fi
  echo "Compiling theme using $rcc_version"

  rm -rf dist
  mkdir dist
  for flavor in $(whiskers --list-flavors -o plain); do
    rcc src/catppuccin-${flavor}/resources.qrc -o dist/catppuccin-${flavor}.qbtheme -binary
  done

package: build compile
