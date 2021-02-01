path='../../modules/ROOT/pages'
nav_file="../../modules/ROOT/nav.adoc"
rm -f $nav_file
touch $nav_file

for f in $path/*; do
  file="$(basename -- $f)"
  echo "file $f"
  title="$(grep -e "== " $f -m 1 | sed 's/.*== //')"
  echo "title $title"
  echo "* xref:$file[$title]" >>  $nav_file 
done