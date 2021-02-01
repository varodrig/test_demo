path='../../modules/ROOT/pages'
old_path='image::images/'
new_path='image::_images/images/'

for f in $path/*; do
  file="$(basename -- $f)"
  echo "file $f"
  image="$(grep -e ".png" $f | sed -e 's/$old_path/$new_path/g')"
  echo "image $image"
  #echo "* xref:$file[$title]" >>  $nav_file 
done