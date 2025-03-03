set windows-shell := ["pwsh", "-NoLogo", "-Command"]

_default:
  @just --list

build:
  whiskers templates/config.tera
  whiskers templates/resources.tera
  whiskers templates/stylesheet.tera

[unix]
compile:
  tools/build

[windows]
compile:
  tools/build.ps1

package: build compile
