_default:
  @just --list

build:
  whiskers templates/config.tera
  whiskers templates/resources.tera
  whiskers templates/stylesheet.tera

compile:
  #!/usr/bin/env bash
  rm -rf dist
  mkdir dist
  for flavor in $(whiskers --list-flavors -o plain); do
    /usr/lib/qt6/libexec/rcc src/catppuccin-${flavor}/resources.qrc -o dist/catppuccin-${flavor}.qbtheme -binary
  done

package: build compile