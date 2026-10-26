#!/bin/zsh
# Re-publish the promo page to GitHub Pages after it has been rebuilt.
export PATH="/opt/homebrew/bin:$PATH"
cd "$(dirname "$0")"
cp ../CytoFLEX_SRT_promo.html index.html
git add -A && git -c user.name="Yango99" -c user.email="yang.on.hwa@gmail.com" commit -q -m "update promo page" && git push -q origin main
echo "pushed — live in ~1 min at https://yango99.github.io/cytoflex-srt/"
