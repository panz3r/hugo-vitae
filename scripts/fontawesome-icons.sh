#!/bin/sh
#set -ex

solid_icons="envelope rss"
solid_url=https://raw.githubusercontent.com/FortAwesome/Font-Awesome/master/svgs/solid

brands_icons="facebook github gitlab instagram twitter"
brands_url=https://raw.githubusercontent.com/FortAwesome/Font-Awesome/master/svgs/brands

dest=assets/svgs/fontawesome

mkdir -p "${dest}"

# Solid icons
for icon in $solid_icons; do
  icon="${icon}.svg"
  curl -s -o "${dest}/solid/${icon}" "${solid_url}/${icon}"
done

# Brands icons
for icon in $brands_icons; do
  icon="${icon}.svg"
  curl -s -o "${dest}/brands/${icon}" "${brands_url}/${icon}"
done
