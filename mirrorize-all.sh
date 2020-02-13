
for version in $(sort -V -r releases.list); do
    ./mirrorize.sh "$version"
    git add . && git commit -am "add $version" && git push
done