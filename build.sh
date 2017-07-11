for s in 16 32 48; do
  convert images/icon.png -resize "${s}x${s}" "files/assets/icon-${s}.png";
done

nikola build
